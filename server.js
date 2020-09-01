const http = require('http');
var _ = require('lodash');
http.createServer((req,res)=>{
    res.writeHead(200,{
        "content-type":'text/plain'
    });
    res.write('hw random'+_.random(15, 20));
    res.end();
}).listen(3333)