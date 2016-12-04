

//const models = require('./config/dbConnect.js');
const Request = require('./db/requests/RequestModel.js');
const Category = require('./db/category/CategoryModel.js');
const User = require('./db/user/UserModel.js');
// pretend this is a controller
module.exports = ()=>{

    console.log('in test');
    var khoa = User.create({
        name: 0
    })
    Category.create({
        name: "driving"
    })
    // Request.create({
    //     name: "12312gsdgssg4",
    //     userId: 1,
    //     categoryId: 1,
    //     // afdfafaewf: "dfaddfawef"
    // })
    // .then(function(request){
    //     console.log('request is,',request);
    //     request.addUser(khoa).then(function(model){
    //         console.log(' i associated khoa', model);
    //     });
    // })

}