﻿var http = require('http')
http.createServer(function(req,res){
	res.writeHead(200,{'Content-Type':'text/plain'});
	res.end('Hello world\n');
	
}).listen(8082,"172.27.1.189");

console.log("Server running at http://172.27.1.189:8082");