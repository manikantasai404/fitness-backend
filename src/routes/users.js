// src/routes/users.js
const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');
const auth = require('../middleware/auth');

// Existing endpoints for registration and login
router.post('/register', userController.registerUser);
router.post('/login', userController.loginUser);

// Profile endpoints (protected routes)
router.get('/profile', auth, userController.getUserProfile);
router.post('/profile', auth, userController.updateUserProfile);

module.exports = router;