require 'cgi'

cita = CGI.escape '23/10/2001 a las 21:30'
CGI.unescape cita
