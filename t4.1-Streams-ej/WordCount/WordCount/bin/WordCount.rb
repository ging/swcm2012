require 'lib/Count'
include Count

if ( 2 < ARGV.length) then raise "  Syntax: Grep pattern <src> <dest>  " end

$stdin = File.open(ARGV[1])         if (1 < ARGV.length)
$stdout = File.open(ARGV[2], "w")   if (2 < ARGV.length)

text = "";
text += " " + $stdin.gets until $stdin.eof       # ^D genera eof al teclear

$stdout.puts "Words: " + count_words(text)

if ($stdin  != STDIN)  then $stdin.close  ; $stdin  = STDIN  ; end
if ($stdout != STDOUT) then $stdout.close ; $stdout = STDOUT ; end 
