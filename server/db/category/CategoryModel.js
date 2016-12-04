
const Sequelize = require('../../config/dbConnect.js').Sequelize;
const sequelize = require('../../config/dbConnect.js').sequelize;


var Category = sequelize.define('Category', {
  name: {
    type: Sequelize.STRING,
  },
  spare1: {
    type: Sequelize.TEXT
  }
},{freezeTableName:true});
module.exports = Category;
  
