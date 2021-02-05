const dataMapper = require('../dataMapper');

const mainController = {

  // méthode pour la page d'accueil
  homePage: (req, res, next) => {
    dataMapper.getAllItems((err, data) => {
      if(err) next();
      else res.render('accueil', {ducks: data.rows})
    });
  },

  // méthode pour la page article
  articlePage: (req, res, next) => {
    const id = Number(req.params.id);
    dataMapper.getOneItem(id, (err, dataDuck) => {
      if(err) next();
      else {
        dataMapper.getReviews(id, (err, dataReviews) => {
          if(err) next();
          else res.render('article', {duck: dataDuck.rows[0], reviews:dataReviews.rows});
        })
      }
    })
  },

  // méthode pour afficher toutes les catégories
  categoriesPage: (req, res, next) => {
    dataMapper.getCategories((err, data) => {
      if (err) next();
      else res.locals.categories = data.rows;
    })
    next();
  },

  // méthode pour afficher une seule catégorie
  categoryPage: (req, res, next) => {
    dataMapper.getItemsByCategory(req.params.category, (err, data) => {
      if (err) next();
      else res.render('accueil', {ducks: data.rows})
    })
    
  },

  // page contact
  contactPage: (req, res, next) => {
    res.render('contact');
  },

  submitMessage: (req, res, next) => {
    res.redirect('/');
  },

  notFound: (req, res) =>{
    res.status(404).render('error404')
  }

};


module.exports = mainController;
