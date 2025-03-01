// server.cjs
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Bonjour, monde !');
});

app.listen(10000, () => {
  console.log('Serveur démarré sur le port 10000');
});