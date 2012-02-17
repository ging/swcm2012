require 'socket'    # importa libreria de sockets

host = (ARGV[0] || 'localhost')  # asignación condicional

begin

  sock=TCPSocket.new(host,2000)  # crea socket a “host” en puerto 13
  time = sock.gets             # lee el msj enviado por servidor
  puts "It is "+ time +" at "+host

  rescue Exception  # Excepción indica que no hay
    puts "no server at " + host # servidor activo
  ensure
    sock.close()    # ensure asegura ejecución haya excepcion o no 
end


