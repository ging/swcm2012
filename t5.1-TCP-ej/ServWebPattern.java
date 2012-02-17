import java.util.*;   import java.io.*;   import java.net.*;

public class ServWebPattern {  
  public static void main (String args[]) {
        
    try {
      byte[] body, header, lc = {13,10};
      String l, code, x, path="", CR_LF = new String(lc,"US-ASCII");
      int j, n = 0;

      ServerSocket serv = new ServerSocket(8080);
      System.out.println("showserver created at port 8080.");

      while (true) {
         Socket c = serv.accept();
         LineNumberReader netIn = new LineNumberReader(
               new InputStreamReader(c.getInputStream(), "UTF-8"));  
         OutputStream netOut = c.getOutputStream();

         System.out.println(l = URLDecoder.decode(netIn.readLine(), "UTF-16"));
         if (l.matches("GET .*")) {
            path=l.replaceFirst("GET[ ]+/([^ \\&#]*)[ \\&#].*", "$1" );
            if ((path.matches(""))||(path.matches(".*/"))) { path += "index.html" ; }

            while (!(x = netIn.readLine()).equals("")) { System.out.println(x); }

            try { 
                RandomAccessFile i = new RandomAccessFile(path, "r");
                i.read(body = new byte[(int)i.length()]);
                code = "200 OK";

            } catch (FileNotFoundException f) {
                body = ("<html><body><h1> Recurso no encontrado </h1>" 
                        + path + "</body></html>").getBytes("US-ASCII");
                code ="404 Not Found";
            }

         } else {
             body = ("<html><body><h1>Comando desconocido</h1></body></html>").getBytes("US-ASCII");
             code = "400 Bad Request";
         }

         header = ("HTTP/1.0 " + code.toString() + CR_LF + "Content-type: text/html" + CR_LF + 
                "Content-length: " + String.valueOf(body.length) + CR_LF + CR_LF).getBytes("US-ASCII");
         netOut.write(header); 
         netOut.write(body); 
         netOut.flush();
         c.close();
      }
    } 
    catch (IOException e) { System.err.println(e); }
  }
}