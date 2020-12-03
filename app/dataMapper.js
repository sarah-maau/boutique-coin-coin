const client = require('./database');

const dataMapper = {

   getAllItems: (callback) => {
       client.query(`SELECT * FROM "duck"`, callback)
   },

   getOneItem: (id, callback) => {
       client.query(`SELECT * FROM "duck" WHERE id=$1`, [id], callback)
   }, 

   getCategories: (callback) => {
       client.query(`SELECT "category", COUNT(*) FROM "duck" GROUP BY "category"`, callback)
   }


};

module.exports = dataMapper;
