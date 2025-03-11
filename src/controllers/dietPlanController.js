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
 *   "weight": 70,
 *   "gender": "male",
 *   "fitness_goal": "weight gain",
 *   "days": [
 *      { "day": 1, "dietType": "veg" },
 *      { "day": 2, "dietType": "nonveg" },
 *      { "day": 3, "dietType": "veg" },
 *      ... (up to day 10 or more)
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

        // Example dynamic calculation based on fitness goal and weight
        if (fitness_goal.toLowerCase().includes('gain')) {
            // For weight gain, maybe require relatively lower fiber but higher carbs.
            fiberReq = weight * 0.5;   // e.g., 0.5 grams fiber per kg
            carbsReq = weight * 4;     // e.g., 4 grams carbs per kg
        } else if (fitness_goal.toLowerCase().includes('loss')) {
            // For weight loss, perhaps higher fiber and lower carbs.
            fiberReq = weight * 0.7;   // e.g., 0.7 grams fiber per kg
            carbsReq = weight * 2.5;   // e.g., 2.5 grams carbs per kg
        } else {
            // For maintenance or other goals, a moderate value.
            fiberReq = weight * 0.6;   // e.g., 0.6 grams fiber per kg
            carbsReq = weight * 3.5;   // e.g., 3.5 grams carbs per kg
        }

        let dietPlans = [];

        // Loop over each day input
        for (let dayInfo of days) {
            const { day, dietType } = dayInfo;

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

            // Calculate total nutritional values from selected items (example for protein and fiber)
            const totalProtein = [breakfast, lunch, dinner, snack1, snack2].reduce((sum, food) => sum + (food.protein || 0), 0);
            const totalFiber = [breakfast, lunch, dinner, snack1, snack2].reduce((sum, food) => sum + (food.fiber || 0), 0);

            // Build diet plan for this day
            const plan = {
                day: day,
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
                // totals: {
                //   protein: totalProtein,
                //   fiber: totalFiber
                // }
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