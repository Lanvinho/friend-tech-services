// server.cjs
const express = require('express');
const path = require('path');

const app = express();

// Définir le dossier "public" comme dossier statique
app.use(express.static(path.join(__dirname, 'public')));

// Démarrer le serveur
const PORT = process.env.PORT || 10000;
app.listen(PORT, () => {
  console.log(`Serveur démarré sur le port ${PORT}`);
});