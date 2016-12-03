

module.exports = (sequelize, DataTypes)=>{
    var Lesson = sequelize.define('Lesson', {
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
    Lesson.sync();
    
    return Lesson;
}