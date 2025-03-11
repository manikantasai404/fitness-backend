// src/controllers/dietPlanController.js
const pool = require('../db/db');

// Utility function to shuffle an array randomly
function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
}

/**
 * generateMultiDayDietPlan: Generates a diet plan for multiple days.
 * Expected input (JSON):
 * {
 *   "weight": 75,
 *   "gender": "male",
 *   "fitness_goal": "weight loss",
 *   "days": [
 *      { "day": 1, "dietType": "nonveg", "date": "2023-04-20" },
 *      { "day": 2, "dietType": "nonveg", "date": "2023-04-21" },
 *      { "day": 3, "dietType": "nonveg", "date": "2023-04-22" },
 *      { "day": 4, "dietType": "nonveg", "date": "2023-04-23" }
 *   ]
 * }
 */
exports.generateMultiDayDietPlan = async (req, res) => {
    try {
        const { weight, gender, fitness_goal, days } = req.body;

        // Validate required inputs
        if (!weight || !gender || !fitness_goal || !days || !Array.isArray(days)) {
            return res.status(400).json({ message: 'Missing required parameters' });
        }

        // Calculate recommended macros based on fitness goal (example logic)
        let proteinReq;
        if (fitness_goal.toLowerCase().includes('gain')) {
            proteinReq = weight * 1.5; // For weight gain: 1.5 grams protein per kg
        } else if (fitness_goal.toLowerCase().includes('loss')) {
            proteinReq = weight * 1.2;
        } else {
            proteinReq = weight * 1.3;
        }
        const waterReq = (weight * 35) / 1000; // in liters (35 ml per kg)
        let fiberReq, carbsReq;

        // Dynamic calculation based on fitness goal and weight
        if (fitness_goal.toLowerCase().includes('gain')) {
            fiberReq = weight * 0.5;   // 0.5 g fiber per kg
            carbsReq = weight * 4;     // 4 g carbs per kg
        } else if (fitness_goal.toLowerCase().includes('loss')) {
            fiberReq = weight * 0.7;   // 0.7 g fiber per kg
            carbsReq = weight * 2.5;   // 2.5 g carbs per kg
        } else {
            fiberReq = weight * 0.6;   // 0.6 g fiber per kg
            carbsReq = weight * 3.5;   // 3.5 g carbs per kg
        }

        let dietPlans = [];

        // Loop over each day input
        for (let dayInfo of days) {
            const { day, dietType, date } = dayInfo;  // NEW: Accept "date" in each day object

            // **NEW CODE: Determine season from provided date**
            const dayDate = new Date(date);
            const month = dayDate.getMonth() + 1; // getMonth returns 0-11; convert to 1-12
            let season;
            if (month === 12 || month === 1 || month === 2) {
                season = "Winter";
            } else if (month >= 3 && month <= 8) {
                season = "Summer";
            } else { // month 9 to 11
                season = "Fall";
            }
            // End NEW CODE

            // Query foods based on provided dietType and matching fitness_goal in applicable_goals
            const query = `
                SELECT * FROM fitness.foods 
                WHERE category = $1 
                  AND applicable_goals ILIKE '%' || $2 || '%'
            `;
            const values = [dietType, fitness_goal];
            const foodsResult = await pool.query(query, values);
            let foods = foodsResult.rows;

            // If not enough items, return error for that day (requires at least 5 items for 4 meals)
            if (foods.length < 5) {
                return res.status(400).json({ message: `Not enough food items available for day ${day}` });
            }

            // Optional: For every 3rd day, override with nonveg items if available
            if (day % 3 === 0) {
                const nonVegQuery = `
                    SELECT * FROM fitness.foods 
                    WHERE category = 'nonveg'
                      AND applicable_goals ILIKE '%' || $1 || '%'
                `;
                const nonVegResult = await pool.query(nonVegQuery, [fitness_goal]);
                if (nonVegResult.rows.length > 0) {
                    foods = nonVegResult.rows;
                }
            }

            // Randomize food selection; pick foods for breakfast, lunch, dinner, and 2 snacks
            const shuffledFoods = shuffleArray([...foods]);
            const breakfast = shuffledFoods[0];
            const lunch = shuffledFoods[1];
            const dinner = shuffledFoods[2];
            const snack1 = shuffledFoods[3];
            const snack2 = shuffledFoods[4];

            // **NEW CODE: Fetch a random fruit that is in season (or Year-Round)**
            const fruitQuery = `
                SELECT * FROM fitness.fruits 
                WHERE (season ILIKE $1 OR season ILIKE 'Year-Round')
                ORDER BY RANDOM() LIMIT 1
            `;
            const fruitValues = [season];
            const fruitResult = await pool.query(fruitQuery, fruitValues);
            const fruit = fruitResult.rows[0];
            // End NEW CODE

            // Calculate total nutritional values from selected items (example for protein and fiber)
            const totalProtein = [breakfast, lunch, dinner, snack1, snack2].reduce((sum, food) => sum + (food.protein || 0), 0);
            const totalFiber = [breakfast, lunch, dinner, snack1, snack2].reduce((sum, food) => sum + (food.fiber || 0), 0);

            // Build diet plan for this day (including the fruit suggestion)
            const plan = {
                day: day,
                date: date, // NEW: Include the provided date in the plan
                dietType: dietType,
                recommended: {
                    protein: proteinReq + ' Grams',
                    fiber: fiberReq + ' Grams',
                    carbs: carbsReq + ' Grams',
                    water: waterReq + ' Liters'
                },
                meals: {
                    breakfast: breakfast,
                    lunch: lunch,
                    dinner: dinner,
                    snacks: [snack1, snack2]
                },
                fruit: fruit // NEW: Added fruit suggestion based on season
            };
            dietPlans.push(plan);
        }

        // Return the diet plan for all requested days
        return res.status(200).json({ dietPlans });
    } catch (error) {
        console.error('Error generating multi-day diet plan:', error);
        return res.status(500).json({ message: 'Error generating multi-day diet plan' });
    }
};