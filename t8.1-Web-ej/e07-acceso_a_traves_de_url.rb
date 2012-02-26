require 'open-uri'

if ARGV[0]
  # open provoca la transacción HTTP-GET
  f = open ARGV[0]
  puts f.read
end
