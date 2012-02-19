require 'socket'   # importa libreria de sockets

port = (ARGV[0] || 7)  # asignación condicional

server = TCPServer.open(port)   # creo socket de servidor
puts "HelloServer at port: " + port.to_s

loop {

  client = server.accept     # acepto conexión de cliente

  Thread.new(client) do |client|  # Ejecuta bloque como hebra
     while (line = client.gets) # "client.gets" recibe linea de cliente y
                                # devuelve "nil",  si se cierra socket cliente
        puts line
        client.puts line        # envia eco a cliente
     end
  end
}


