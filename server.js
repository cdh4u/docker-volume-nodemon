'use strict';

const express = require('express');

// Constants
const PORT = 8080;

// App
const app = express();
app.get('/', function (req, res) {
  res.send('Hello world! Change this text and you will experience great magic in your browser!\n');
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
