require 'socket'

class WebServer
  def initialize
    server = TCPServer.open(8080)
    puts "web server created at port 8080"

    loop do
      @socket = server.accept # Acepta conexión del cliente
      request = @socket.gets  # Lee la primera línea
      @socket.gets            # HTTP requiere línea final en blanco

      unless request =~ /^GET/i
        respond "400 Bad Request",
                "<html><body><h1>Verbo desconocido</h1></body></html>"
        next
      end

      request =~ /^GET \/(.*) .*/ # GET /(fichero) HTTP/1.x
      path = $1

      # Inserta index.html si no hay fichero
      if path == "" || path =~ /\/$/
        path += "index.html"
      end

      if File.exists?(path)
        # Lee fichero y prepara respuesta
        file = open(path)

        puts "OK #{ path }"

        respond "200 OK",
                file.read
      else
        puts "NotFound #{ path }"

        # Si el fichero no existe, prepara código de error y respuesta
        respond "404 Not Found",
                "<html><body><h1>Recurso no encontrado</h1>#{ path }</body></html>"
      end

    end
  end

  def respond(code, body)
    @socket.puts "HTTP/1.0 #{ code }"
    @socket.puts "Content-type: text/html"
    @socket.puts "Content-length: #{ body.length }"
    @socket.puts
    @socket.puts body
    @socket.close
  end
end

WebServer.new
