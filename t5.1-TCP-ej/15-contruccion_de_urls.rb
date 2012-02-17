require 'uri'

u1 = URI.parse("http://www.upm.es/hola.html#sec3")
u2 = u1 + "manual.html?t=net#sec3"

puts u1
puts u2

puts "Protocol: #{ u2.scheme }"
puts "Auth:   #{ u2.userinfo }"
puts "Host:     #{ u2.host }"
puts "Port:     #{ u2.port }"
puts "File:     #{ u2.path }"
puts "Query:    #{ u2.query }"
puts "Anchor:   #{ u2.fragment }"

=begin
System.out.println("Protocol: " + u2.getProtocol());
System.out.println("Anchor: " + u2.getAuthority());
System.out.println("Host: " + u2.getHost());
System.out.println("Port: " + u2.getPort());
System.out.println("File: " + u2.getFile ());
System.out.println("File: " + u2.getPath());
System.out.println("Anchor: " + u2.getRef());
} catch (Exception e) {System.out.println(e);}

=end
