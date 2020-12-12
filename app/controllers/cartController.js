const dataMapper = require('../dataMapper')


const cartController = {

  // méthode pour afficher le panier
  cartPage: (req, res) => {
    let totalHt = 0;

    for(const duck of req.session.cart) {
      totalHt += duck.price * duck.quantity;
    }

    totalHt = Number(totalHt.toFixed(2));

    const tva = Number((totalHt * 0.2).toFixed(2));

    const totalTtc = Number((totalHt + tva + 9.99).toFixed(2));

    res.render('panier', {totalHt, tva, totalTtc});
  }, 

  addToCart: (req, res, next) => {
    const id = Number(req.params.id);
    const duck = req.session.cart.find(item => item.id === id);

    if(duck) {
      duck.quantity++;
      res.redirect('/cart')
    } 
    else {
      dataMapper.getOneItem(id, (err, data) => {
        if (err) next();
        else {
          data.rows[0].quantity = 1;
          req.session.cart.push(data.rows[0]);
          res.redirect('/cart');
        }

      })
    }

  },

  removeFromCart: (req, res, next) => {
    const id = Number(req.parmas.id);
    const duck = req.session.cart.find(item => item.id === id);
    if (!duck) next();
    if(duck.quantity>1) {
      duck.quantity--;
      res.redirect('/cart');
    }
    else {
      req.session.cart = req.session.cart.filter(item => item.id !==id);
      res.redirect('/cart');
    }
  }

};


module.exports = cartController;
