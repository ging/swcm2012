require 'socket'

p = (ARGV[0] || 13)

server = TCPServer.open(p)
puts "HelloServer at port: " + p.to_s

loop {

      client = server.accept 
      client.puts(Time.now.ctime) 
      client.puts "Closing the connection. Bye!"
      client.close
}
