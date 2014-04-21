# install package:
#     sudo npm install beautifier
# 
#   more about beautifier:
#       https://github.com/rickeyski/node-beautifier

bin = `npm bin`.chomp

task :default => :compile

desc "compile the grammar aSb.jison"
task :compile => %w{aSb.jison} do
  sh "jison aSb.jison aSb.l -o aSb.js"
end

desc "Compile with --debug"
task :debug => %w{aSb.jison} do
  sh "jison aSb.jison aSb.l -o aSb.js --debug"
end

desc "Generates out.pdf containing the listings"
task :print do
  sh "a2ps --columns=1 -f 8 -R aSb.js  -o out.ps"
  #sh "a2ps --columns=1 -f 8 -R aSb_anotado.js -o out.ps"
  sh "ps2pdf out.ps out.pdf"
end

desc "remove generated files"
task :clean do
  sh 'rm -f out.pdf out.ps out.ps~ aSb.js'
end

desc "run the example"
task :run do
  sh 'node use_aSb.js'
end
