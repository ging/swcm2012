
   
require 'socket' 

for line in 
  Socket.getaddrinfo('localhost', 'http')
       puts line.join(", ") 
end
