require 'socket'    # importa libreria de sockets

host = (ARGV[0] || 'localhost')  # asignación condicional

begin

  sock=TCPSocket.new(host, 2000)  # crea socket a “host” en puerto 2000

  while ((line = gets) !~ /exit|quit/)
  	sock.puts line                # envia linea
	  puts sock.gets                # recibe eco
  end

  rescue Exception  # Excepción indica que no hay
    puts "no server at " + host # servidor activo
  ensure
    sock.close()    # ensure asegura ejecución haya excepcion o no 
end

