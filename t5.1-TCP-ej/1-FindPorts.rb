require 'socket'    # importa libreria de sockets

host = (ARGV[0] || 'localhost')  # asignación condicional

puts "searching at " + host 
for  i  in 1..1024 
  begin
    sock=TCPSocket.new(host,i) # crea socket a “host” en puerto “i”
  rescue Exception  # captura excepcion y
    next       # finaliza bucle si excepcion
  end
  puts "Server at port " + i.to_s + " of " + host
  sock.close()
end


