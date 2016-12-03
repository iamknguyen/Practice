

module.exports = (sequelize, DataTypes)=>{
    var User = sequelize.define('User', {
        firstName: {
            type: DataTypes.STRING,
            field: 'first_name' // Will result in an attribute that is firstName when user facing but first_name in the database
        },
        lastName: {
            type: DataTypes.STRING
        }
        }, {
        freezeTableName: true // Model tableName will be the same as the model name
    });
    
    User.sync()
    
    return User;
}