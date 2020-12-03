// Toujours commencer par importer les variables d'environnement !
require('dotenv').config();

const express = require('express');

// on importe le router
const router = require('./app/router');

// un peu de config
const PORT = process.env.PORT || 3300;


const app = express();

// On utilise ejs comme moteur de rendu (pour les vues)
app.set('view engine', 'ejs');

// On indique à express où sont nos vues
app.set('views', './app/views');

// servir les fichiers statiques qui sont dans "public"
app.use(express.static('public'));

// routage !
app.use(router);


// on lance le serveur
app.listen(PORT, () => {
  console.log(`Listening on ${PORT}`);
});
