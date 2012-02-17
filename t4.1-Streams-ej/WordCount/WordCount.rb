if ( 2 < ARGV.length) then raise "  Syntax: Grep pattern <src> <dest>  " end

$stdin = File.open(ARGV[1])  if (1 < ARGV.length)
$stdout = File.open(ARGV[2], "w")   if (2 < ARGV.length)

text = "";
text += " " + $stdin.gets until $stdin.eof       # ^D genera eof al teclear

def count_w(text)
  if (text =~ /[^a-zA-Z]*\\Z/) then text = "" end  # elimina ficheros sin palabras

# sustituye cada palabra por letra "w" y calcula longitud de string resultante
  return text.gsub(/[^a-zA-Z]*[a-zA-Z]+[^a-zA-Z]*/,"w").length.to_s
end

$stdout.puts "Words: " + count(text)

if ($stdin  != STDIN)  then $stdin.close  ; $stdin  = STDIN  ; end
if ($stdout != STDOUT) then $stdout.close ; $stdout = STDOUT ; end 
