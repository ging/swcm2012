
     require 'socket'
     include Socket::Constants
     socket = Socket.new(AF_INET, SOCK_STREAM, 0)
     sockaddr = Socket.sockaddr_in(80, 'www.google.com')
     begin
       socket.connect_nonblock(sockaddr)
     rescue Errno::EINPROGRESS
       IO.select(nil, [socket])
       begin
         socket.connect_nonblock(sockaddr)
       rescue Errno::EISCONN
       end
     end
     socket.write("GET / HTTP/1.0\r\n\r\n")
     results = socket.read

