const dataMapper = require('../dataMapper');

const mainController = {

  // méthode pour la page d'accueil
  homePage: (request, response, next) => {
    dataMapper.getAllItems((err, data) => {
      if(err) next();
      else response.render('accueil', {ducks: data.rows})
    });

    ;
  },

  // méthode pour la page article
  articlePage: (request, response, next) => {
    const id = Number(request.params.id);
    dataMapper.getOneItem(id,(err, data) => {
      if(err) next();
      else response.render('article', {duck: data.rows[0]})
    })
  },

  categoriesPage: (request, response, next) => {
    dataMapper.getCategories((err, data) => {
      if (err) next();
      else response.locals.categories = data.rows;
    })
    next();
  },

  notFound: (request, response) =>{
    response.status(404).render('error404')
  }

};


module.exports = mainController;
