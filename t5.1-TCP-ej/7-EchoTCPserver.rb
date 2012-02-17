require 'socket'   # importa libreria de sockets

port = (ARGV[0] || 7)  # asignación condicional

server = TCPServer.open(port)   # creo socket de servidor
puts "HelloServer at port: " + p.to_s

loop {

  client = server.accept    # acepto conexión de cliente

  while (line = client.gets) # recibe msj de cliente
		# "client.gets" devuelve "nil" si "client" cerrado
  puts line
  client.puts line           # envia eco a cliente
  end
}


