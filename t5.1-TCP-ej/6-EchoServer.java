import java.io.*;   
import java.net.*;

public class EchoServer {  
  public static void main (String args[]) {
    try {
      ServerSocket serv = new ServerSocket(2000);
      System.out.println("HelloServer at 2000.");
      while (true) {
         Socket c = serv.accept();
         PrintWriter netOut = new PrintWriter(c.getOutputStream(),true);
         BufferedReader netIn = new BufferedReader(
                        new InputStreamReader(c.getInputStream()));
         String line;
         while ((line=netIn.readLine()) != null) {
           netOut.println(line);
           System.out.println(line);
         }
         c.close();
      }
    } catch (IOException e) { System.err.println(e); 
    }
  }
}