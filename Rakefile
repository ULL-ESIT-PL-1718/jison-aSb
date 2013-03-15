# install package:
#     sudo npm install beautifier
# 
#   more about beautifier:
#       https://github.com/rickeyski/node-beautifier

bin = `npm bin`.chomp

desc "compile the grammar aSb_ugly.jison"
task :default => %w{aSb_ugly.js} do
  sh "mv aSb.js aSb_ugly.js"
  sh "#{bin}/beautifier aSb_ugly.js > aSb.js"
  sh "rm -f aSb_ugly.js"
end

file "aSb_ugly.js" => %w{aSb.jison} do
  sh "jison aSb.jison -o aSb.js"
end
