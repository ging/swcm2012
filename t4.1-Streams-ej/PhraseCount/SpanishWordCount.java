import java.io.*;class WCount {      public static void main (String args[]) throws Exception {        if (2 < args.length)                   throw (new Exception ("Syntax: Count <dest> <src>"));

        BufferedReader i = new BufferedReader (new InputStreamReader(System.in));        if (args.length == 3) i = new BufferedReader (new FileReader(args[2]));

        PrintWriter o = new PrintWriter(System.out);        if (args.length > 1) o = new PrintWriter (new FileWriter(args[1]));        String line, l1, la, laa, l2, lb, text = "";        while (!(line = i.readLine()).equals("")) { text = text + " " + line; };

        if (text.matches("[^a-zA-ZñÑ]*\\Z")) text = "";

        l2 = text.replaceAll("[^a-zA-ZñÑ]*[a-zA-ZñÑ]+[^a-zA-ZñÑ]*","w");
        lb = text.replaceAll("[^a-zA-ZñÑ]*[a-zA-ZñÑ]+[^a-zA-ZñÑ]*","$0 --- ");

        o.println("l2: " + l2); 
        o.println("lb: " + lb);
        o.println("Words: " + l2.length());
        o.close();
   }}

