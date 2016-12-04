
const Sequelize = require('../../config/dbConnect.js').Sequelize;
const sequelize = require('../../config/dbConnect.js').sequelize;


var Request = sequelize.define('Request', {
  name: {
    type: Sequelize.STRING,
  },
  spare1: {
    type: Sequelize.TEXT
  }
},{freezeTableName:true});
module.exports = Request;
  
  