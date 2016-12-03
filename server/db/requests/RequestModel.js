
module.exports = (sequelize, DataTypes)=>{
    var Request = sequelize.define('Request', {
        firstName: {
            type: DataTypes.STRING,
            field: 'first_name' 
        },
        lastName: {
            type: DataTypes.STRING
        }
        }, {
        freezeTableName: true 
    });
    
    Request.sync();
    
    return Request;
}