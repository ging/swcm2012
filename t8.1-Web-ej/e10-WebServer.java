import java.util.*;   import java.io.*;   import java.net.*;

public class WebServer {  
  public static void main (String args[]) throws Exception {

    byte[] body;
    String line, code, path="";

    ServerSocket serv = new ServerSocket(8080);
    System.out.println("Server created at port 8080.");

    while (true) {
      try { 
         Socket c = serv.accept();                                   // Acepta conexiones de cliente
         BufferedReader netIn = new BufferedReader(
               new InputStreamReader(c.getInputStream(), "UTF-8"));  // Reader de entrada (UTF-8)
         OutputStream netOut = c.getOutputStream();                  // Salida: stream de bytes compatible UTF-8 y binario

         System.out.println(line = URLDecoder.decode(netIn.readLine(), "UTF-8")); // Decodifica caracteres UTF-8 xxx-urlencoded
         if (line.matches("GET .*")) {
            System.out.println("Path: " + (path=line.replaceFirst("GET[ ]+/(.*) .*", "$1" ))); // Analiza si es un comando GET y extrae “path”
            if ((path.matches(""))||(path.matches("/$"))) { path += "index.html" ; }   // inserta “index.html” si directorio

            while (!("".equals(line = netIn.readLine()))) { System.out.println(line); } // lee el resto de la cabecera

            try { 
              RandomAccessFile i = new RandomAccessFile(path, "r");     // Abre fichero 
              i.readFully(body = new byte[(int)i.length()]);                 // Lee fichero UTF-8 o binario
                code = "200 OK";

            } catch (FileNotFoundException f) {                         // Si fichero no existe catura excepción
                body = ("<html><body><h1> Recurso no encontrado </h1>"  // y prepara respuesta
                        + path + "</body></html>").getBytes("UTF-8");
                code ="404 Not Found";
            }

         } else {                                                       // Si comando no es GET, devuelve "404 Bad Request" 
             body = ("<html><body><h1>Comando desconocido</h1></body></html>").getBytes("UTF-8");
             code = "400 Bad Request";
         } 

         netOut.write(("HTTP/1.0 " + code + "\r\n").getBytes("UTF-8"));
         netOut.write(("Content-type: ?????" + "\r\n").getBytes("UTF-8"));
         netOut.write(("Content-length: " + body.length + "\r\n" + "\r\n").getBytes("UTF-8"));
         netOut.write(body);            // Envía UTF-8 si fichero html y binario si binario 
         netOut.flush();
         c.close();
      }
      catch (IOException e) { System.err.println(e); }
    }
  }
}