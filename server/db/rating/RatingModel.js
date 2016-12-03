
module.exports = (sequelize, DataTypes)=>{
    var Rating = sequelize.define('Rating', {
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
    Rating.sync();
    
    return Rating;
}