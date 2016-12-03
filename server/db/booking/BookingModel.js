
module.exports = (sequelize, DataTypes)=>{
    var Booking = sequelize.define('Booking', {
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
    Booking.sync();
    
    return Booking;
}