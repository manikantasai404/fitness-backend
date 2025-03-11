// src/app.js
const express = require('express');
const bodyParser = require('body-parser');
require('dotenv').config();

const app = express();
const port = process.env.PORT || 3000;

// Middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Basic route
app.get('/', (req, res) => {
  res.send('Welcome to the Fitness App API');
});

// User routes
const userRoutes = require('./routes/users');
app.use('/api/users', userRoutes);

const dietPlanRoutes = require('./routes/dietPlan');
app.use('/api', dietPlanRoutes);

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});