
const express = require('express');
const app = express();
require('dotenv').config();

const port = process.env.PORT;


require('./config/middleware.js')(app, express);
require('./config/routes.js')(app, express);
require('./config/dBconnect.js');
// models.User.create({
//     firstName: 'Jeff',
//     lastName: 'Wayne'
// })
//require('./test1.js')();

app.listen(port,()=>{
    console.log("Listening on port " + port);
})