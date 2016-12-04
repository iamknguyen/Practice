
const Sequelize = require('../../config/dbConnect.js').Sequelize;
const sequelize = require('../../config/dbConnect.js').sequelize;

var User = sequelize.define('User', {
    name: {
      type: Sequelize.STRING
    },
    teachFlag: {
      type: Sequelize.BOOLEAN
    },
    rating: {
      type: Sequelize.FLOAT
    },
    bio: {
      type: Sequelize.TEXT
    },
    picture: {
      type: Sequelize.TEXT
    },
    auth: {
      type: Sequelize.TEXT
    },
    spare1: {
      type: Sequelize.TEXT
    }
  },{freezeTableName:true});

module.exports = User;