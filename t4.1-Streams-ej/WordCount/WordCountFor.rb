
  if ( 2 < ARGV.length) then raise "  Syntax: Grep pattern <src> <dest>  " end

  $stdin = File.open(ARGV[1])  if (1 < ARGV.length)
  $stdout = File.open(ARGV[2], "w")   if (2 < ARGV.length)
 
  text = "";
  text = " " + $stdin.gets until $stdin.eof        # ^D genera eof al teclear
  if (text =~ /[^a-zA-Z]*\\Z/) then text = "" end  # elimina ficheros sin palabras
  $stdout.puts("Words: " + 
       text.gsub(/[^a-zA-Z]*[a-zA-Z]+[^a-zA-Z]*/,"w").length.to_s);


  if ($stdin  != STDIN)  then $stdin.close  ; $stdin  = STDIN  ; end
  if ($stdout != STDOUT) then $stdout.close ; $stdout = STDOUT ; end 
