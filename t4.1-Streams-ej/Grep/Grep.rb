# $stdin y $stdout son variables globales donde el sistema almacena
# los valores de acceso estandar STDIN y STDOUT a pantalla y teclado
# Estas variables puden reasignarse a otros dispositivos de
# entrada/salida como ficheros, impresoras, red, etc

if ((ARGV.length < 1) || ( 3 < ARGV.length)) 
	then raise "  Syntax: Grep pattern <src> <dest>  " end

$stdin = File.open(ARGV[1])         if (1 < ARGV.length)
$stdout = File.open(ARGV[2], "w")   if (2 < ARGV.length)
 
while ( !($stdin.eof?) )
	line = $stdin.gets
	$stdout.puts(line) if  (line =~ Regexp.new(ARGV[0]))
end

if ($stdin  != STDIN)  then $stdin.close;  $stdin  = STDIN; end
if ($stdout != STDOUT) then $stdout.close; $stdout = STDOUT; end 
