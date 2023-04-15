const express = require('express');
const os = require('os');


const app = express();
const port = 5000;

const version = process.env.VERSION || '1.0.0';

app.get('/', (req, res) => {
  const ip = req.ip;
  const hostname = os.hostname();
  const message = `Hello from ${hostname}! My IP address is ${ip}. App version: ${version}`;
  res.send(message);
});

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
});