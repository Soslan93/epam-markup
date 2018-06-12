var http = require('http'),
    static = require('node-static'),
    file = new static.Server('./src/');

http.createServer(function(req, res) {
    file.serve(req, res);
}).listen(8081);

console.log('Server running on port 8081');