// standalone Node.js using aSb.jison
var p = require("./aSb").parser;

var t = p.parse("aabb");
console.log(t);
