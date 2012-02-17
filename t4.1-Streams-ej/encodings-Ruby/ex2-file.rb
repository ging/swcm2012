f = File.open("/etc/passwd")  
                  # "/etc/passwd" lleva BOM UTF-8, se interpreta como UTF-8
puts "File encoding is #{f.external_encoding}" #  => File encoding is UTF-8
line = f.gets     
puts "Data encoding is #{line.encoding}"       #  => Data encoding is UTF-8

f.close


f = File.open("/etc/passwd", "r:ascii")  #  "r:ascii" fuerza que "/etc/passwd" 
                             #  se interprete como ASCII aunque este en UTF-8
puts "File encoding is #{f.external_encoding}"  #  => File encoding is US-ASCII
line = f.gets     
puts "Data encoding is #{line.encoding}"        #  => Data encoding is US-ASCII

f.close


f = File.open("/etc/passwd", "rb")  
puts "File encoding is #{f.external_encoding}"  #  => File encoding is US-ASCII
line = f.gets     
puts "Data encoding is #{line.encoding}"        #  => Data encoding is US-ASCII

f.close