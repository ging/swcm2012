import java.io.*;class Grep {      public static void main (String args[]) throws Exception {        if ((args.length < 1) || (3 < args.length))                     throw (new Exception ("Syntax: Grep pattern <dest> <src>"));

        BufferedReader i = new BufferedReader (new InputStreamReader(System.in));        if (args.length == 3) i = new BufferedReader (new FileReader(args[2]));  
        PrintWriter o = new PrintWriter(System.out);        if (args.length > 1) o = new PrintWriter (new FileWriter(args[1]));        String line;        while ((line = i.readLine ()) != null)             {  if (line.matches(args[0])) o.println(line); 
                o.flush(); }        o.close();          i.close();   }}
