const http = require('http')
var _ = require('lodash')
http.createServer((req, res) => {
    res.writeHead(200, {
        'content-type': 'text/plain'
    })
    const str = 'hw random' + _.random(15, 20)
    res.write(str)
    res.end()
}).listen(3333)
