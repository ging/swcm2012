import java.io.*;   
import java.net.*;

public class ConcEchoServer {  
  public static void main (String args[]) {
    try {
      ServerSocket serv = new ServerSocket(2000);
      System.out.println("HelloServer at 2000.");
      while (true) {
         Socket conn = serv.accept();
         ConcEchoThread ct = new ConcEchoThread(conn);
      }
    } catch (IOException e) { System.err.println(e); 
    }
  }
}