// standalone Node.js using aSb.jison
var p = require("./aSb").parser;

var t = p.parse(process.argv[2] || "aabb");
console.log(t);
