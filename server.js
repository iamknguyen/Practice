
const express = require('express');
const app = express();

const port = process.env.PORT || 8080;


require('./server/config/middleware.js')(app, express);
require('./server/config/routes.js')(app, express);
//require('./server/db/connect.js')(app, express);

app.listen(port,()=>{
    console.log("Listening on port " + port);
})