
module.exports = (sequelize, DataTypes)=>{
    var Category = sequelize.define('Category', {
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
    Category.sync();
    
    return Category;
}