
const Sequelize = require('sequelize');
const config = require('../config/cfg.js')
module.exports = ()=>{
    console.log('connecting to db....')
    //let dbUrl = `${config.dbServer}://${config.dbUser}:${config.dbPass}@localhost:${config.dbPort}/${config.dbName}`;
    //const sequelize = new Sequeldize('mysql://localhost:3306/seandb','root','root');
    var sequelize = new Sequelize('seanDb', 'root', 'root', {
        host: 'localhost',
        dialect: 'mysql',

        pool: {
            max: 5,
            min: 0,
            idle: 10000
        },
    });
    var User = sequelize.define('user', {
        firstName: {
            type: Sequelize.STRING,
            field: 'first_name' // Will result in an attribute that is firstName when user facing but first_name in the database
        },
        lastName: {
            type: Sequelize.STRING
        }
        }, {
        freezeTableName: true // Model tableName will be the same as the model name
    });
    User.sync({force: true}).then(function () {
    // Table created
        return User.create({
            firstName: 'John',
            lastName: 'Hancock'
        });
    });
}