import java.io.*;   
import java.net.*;

class ConcEchoThread extends Thread {  
  private Socket c;
  
  ConcEchoThread (Socket conn ) {c = conn; start(); }  
  
  public void run () {
    try {
      PrintWriter netOut = new PrintWriter(c.getOutputStream(),true);
      BufferedReader netIn = new BufferedReader(
                      new InputStreamReader(c.getInputStream()));
      String line;
      while ((line=netIn.readLine()) != null) {
        netOut.println(line);
        System.out.println(line);
      }
      c.close();
    } catch (IOException e) { System.err.println(e);}
  }
}