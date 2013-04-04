// standalone Node.js using aSb.jison
var parser = require("./aSb").parser;

function exec (input) {
    return parser.parse(input);
}

var twenty = exec("aabb");
console.log(twenty);
