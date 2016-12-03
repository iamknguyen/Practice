

const models = require('./config/dBconnect.js');

// pretend this is a controller
module.exports = ()=>{

    console.log('in test');
    models.Booking.create({
        firstName: "booking",
        lastName: "man"
    })
    models.Category.create({
        firstName: "category",
        lastName: "man"
    })
    models.Lesson.create({
        firstName: "lesson",
        lastName: "man"
    })
    models.Rating.create({
        firstName: "rating",
        lastName: "man"
    })
    models.Request.create({
        firstName: "request",
        lastName: "man"
    })
    models.User.create({
        firstName: "user",
        lastName: "man"
    })

}