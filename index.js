const pkg = require('./package.json');
const ex  = require('express');
const app = ex();

app.get('/', (req, res)=>{
    res.send('<div style="display:none">'+pkg.version+'</div><h1>Hello, World!</h1>');
});

module.exports = app;