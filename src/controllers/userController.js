// src/controllers/userController.js
const pool = require('../db/db');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

exports.registerUser = async (req, res) => {
    try {
        const { name, email, password } = req.body;
        // Password hashing
        const hashedPassword = await bcrypt.hash(password, 10);

        // Insert user into the database; using RETURNING clause to get the new user's id.
        const query = `
      INSERT INTO fitness.users (name, email, password, created_at, updated_at)
      VALUES ($1, $2, $3, NOW(), NOW())
      RETURNING id
    `;
        const values = [name, email, hashedPassword];
        const result = await pool.query(query, values);

        res.status(201).json({ message: 'User registered successfully', userId: result.rows[0].id });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error registering user' });
    }
};

exports.loginUser = async (req, res) => {
    try {
        const { email, password } = req.body;

        // Get user details by email
        const query = 'SELECT * FROM fitness.users WHERE email = $1';
        const result = await pool.query(query, [email]);
        if (result.rows.length === 0) {
            return res.status(401).json({ message: 'Invalid email or password' });
        }
        const user = result.rows[0];

        // Compare password
        const validPassword = await bcrypt.compare(password, user.password);
        if (!validPassword) {
            return res.status(401).json({ message: 'Invalid email or password' });
        }

        // Generate JWT token
        const token = jwt.sign({ userId: user.id }, process.env.JWT_SECRET, { expiresIn: '1h' });
        res.status(200).json({ token });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error logging in user' });
    }
};

// src/controllers/userController.js
// ... (previous code)

exports.getUserProfile = async (req, res) => {
    try {
        const userId = req.userId; // Set from token by middleware
        const query = 'SELECT * FROM fitness.user_profiles WHERE user_id = $1';
        const result = await pool.query(query, [userId]);
        if (result.rows.length === 0) {
            return res.status(404).json({ message: 'Profile not found' });
        }
        res.status(200).json(result.rows[0]);
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error fetching profile' });
    }
};

exports.updateUserProfile = async (req, res) => {
    console.log(req);
    try {
        const userId = req.userId;
        const { weight, height, age, gender, fitness_goals, dietary_preferences } = req.body;

        // Check if profile exists
        const checkQuery = 'SELECT * FROM fitness.user_profiles WHERE user_id = $1'
        const checkResult = await pool.query(checkQuery, [userId]);

        if (checkResult.rows.length === 0) {
            // Insert new profile
            const insertQuery = `
          INSERT INTO fitness.user_profiles (user_id, weight, height, age, gender, fitness_goals, dietary_preferences, created_at, updated_at)
          VALUES ($1, $2, $3, $4, $5, $6, $7, NOW(), NOW())
          RETURNING *
        `;
            const values = [userId, weight, height, age, gender, fitness_goals, dietary_preferences];
            const insertResult = await pool.query(insertQuery, values);
            return res.status(201).json({ message: 'Profile created successfully', profile: insertResult.rows[0] });
        } else {
            // Update existing profile
            const updateQuery = `
          UPDATE fitness.user_profiles SET
            weight = $1,
            height = $2,
            age = $3,
            gender = $4,
            fitness_goals = $5,
            dietary_preferences = $6,
            updated_at = NOW()
          WHERE user_id = $7
          RETURNING *
        `;
            const values = [weight, height, age, gender, fitness_goals, dietary_preferences, userId];
            const updateResult = await pool.query(updateQuery, values);
            return res.status(200).json({ message: 'Profile updated successfully', profile: updateResult.rows[0] });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error updating profile' });
    }
};
