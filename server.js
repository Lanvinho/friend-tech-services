// Importation des modules nécessaires
const express = require('express');
const path = require('path');

// Création de l'application Express
const app = express();
const port = process.env.PORT || 4000; // Utilise le port défini par Render ou 3000 en local

// Middleware pour servir les fichiers statiques (HTML, CSS, JS)
app.use(express.static(path.join(__dirname, 'public')));

// Route pour la page d'accueil
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Route pour l'API (exemple)
app.get('/api/data', (req, res) => {
  res.json({ message: 'Données de l\'API' });
});

// Démarrer le serveur
app.listen(port, () => {
  console.log(`Serveur en écoute sur http://localhost:${port}`);
});
