import java.io.*;  
import java.net.*;

public class DayTime {  
  public static void main (String args[]) {   
   String host = args.length > 0 ? args[0]:"localhost";
   try {
      Socket s = new Socket(host, 13);
      BufferedReader reader = new BufferedReader(
            new InputStreamReader(s.getInputStream()));
      String time = reader.readLine();  
      s.close();
      System.out.println("It is " + time + " at " + host);
   } catch (UnknownHostException e) {
      System.err.println(e);
   } catch (IOException e) {
      System.err.println(e);
   } 
  }
}