var http = require('http').Server()
var io = require('socket.io')(http);
io.on('connection', function(socket){
  console.log('a user connected');
});
var redis = require('redis'),
	client = redis.createClient();
var io2 = require('socket.io-emitter')({host:'localhost',port:'6379'});
setInterval(function(){
  io2.emit('time', 'Date');
}, 5001);
var socket = io2.of('/thing')
socket.emit('testing','test please')

// client.subscribe('rt-change');


// io.on('connection', function(socket){
//   redis.on('message', function(channel, message){
//     socket.emit('rt-change', JSON.parse(message));
//   });
// });

// client.subscribe('rt-change','testing');
