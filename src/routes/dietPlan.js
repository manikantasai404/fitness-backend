// src/routes/dietPlan.js
const express = require('express');
const router = express.Router();
const dietPlanController = require('../controllers/dietPlanController');

// Endpoint for multi-day diet plan generation
router.post('/multi-day-diet-plan', dietPlanController.generateMultiDayDietPlan);

module.exports = router;