const express = require('express');

// on importe nos controllers
const mainController = require('./controllers/mainController');
const cartController = require('./controllers/cartController');


const router = express.Router();

// page d'accueil
router.get('/', mainController.categoriesPage, mainController.homePage);

// page article
router.get('/article/:id', mainController.categoriesPage, mainController.articlePage);

// page par catégorie
router.get('/articles/:category', mainController.categoriesPage, mainController.categoryPage);

// page panier
router.get('/cart', cartController.cartPage);

router.get('/cart/add/:id', cartController.addToCart);

router.get('/cart/remove/:id', cartController.removeFromCart);


router.use(mainController.notFound);


// on exporte le router 
module.exports = router;