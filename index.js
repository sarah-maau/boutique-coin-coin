// on importe les variables d'environnement 
require('dotenv').config();

// on importe les modules 
const express = require('express');
const session = require('express-session');

// on importe le router
const router = require('./app/router');

const PORT = process.env.PORT || 3300;

const app = express();

// on utilise ejs comme moteur de rendu (pour les vues)
app.set('view engine', 'ejs');

// on indique à express où sont nos vues
app.set('views', './app/views');

// servir les fichiers statiques qui sont dans "public"
app.use(express.static('public'));

// pour lire les informations dans le body
app.use(express.urlencoded({extended: true}));

app.use(session({
  resave: true,
  saveUninitialized: true,
  secret: "Guess it!",
  cookie: {
    secure: false,
    maxAge: (1000*60*60)
  }
}));

app.use((req, res, next) => {
  if (!req.session.cart) req.session.cart =[];
  res.locals.cart = req.session.cart;
  next();
})

// routage !
app.use(router);

// on lance le serveur
app.listen(PORT, () => {
  console.log(`Listening on ${PORT}`);
});
