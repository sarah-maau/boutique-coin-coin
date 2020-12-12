const client = require('./database');

const dataMapper = {

    getAllItems: (callback) => {
        client.query(`SELECT d.*, ROUND(AVG(r.note)) AS avg_note FROM review r JOIN duck d ON d.id = r.duck_id GROUP BY d.id`, callback)
    },

    getOneItem: (id, callback) => {
        client.query(`SELECT d.*, ROUND(AVG(r.note)) AS avg_note FROM review r JOIN duck d ON d.id = r.duck_id WHERE d.id = $1 GROUP BY d.id`, [id], callback)
    }, 
    
    getReviews: (id, callback) => {
        client.query(`SELECT * FROM review WHERE duck_id=$1`, [id], callback);
    },    

    getCategories: (callback) => {
        client.query(`SELECT "category", COUNT(*) FROM "duck" GROUP BY "category"`, callback)
    },

    getItemsByCategory: (name, callback) => {
        client.query(`SELECT * FROM "duck" WHERE "category"=$1`, [name], callback)
    }


};

module.exports = dataMapper;
