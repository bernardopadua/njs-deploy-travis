const ex   = require('express');
const app  = ex();
const port = process.env['PORT'];

console.log(process.env);

app.get('/', (req, res)=>{
    res.send('<h1>Hello, World!</h1>');
});

app.listen(port, ()=>{
    console.log('Listening on port ['+port+']...')
});