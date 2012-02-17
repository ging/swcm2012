import java.io.*;class WCount {      public static void main (String args[]) throws Exception {        if (2 < args.length)                   throw (new Exception ("Syntax: Count <dest> <src>"));

        BufferedReader i = new BufferedReader (new InputStreamReader(System.in));        if (args.length == 3) i = new BufferedReader (new FileReader(args[2]));

        PrintWriter o = new PrintWriter(System.out);        if (args.length > 1) o = new PrintWriter (new FileWriter(args[1]));        String line, l1, la, laa, l2, lb, text = "";        while (!(line = i.readLine()).equals("")) { text = text + " " + line; };

        if (text.matches("[^a-zA-ZñÑ]*\\Z")) text = "";

        l1 = text.replaceAll("([^a-zA-ZñÑ]*[a-zA-ZñÑ]+)[^\\x2E]*([\\x2E]+|\\Z)","p");
        la = text.replaceAll("([^a-zA-ZñÑ]*[a-zA-ZñÑ]+)[^\\x2E]*([\\x2E]+|\\Z)","$0 --- ");
        laa = text.replaceAll("([^a-zA-ZñÑ]*[a-zA-ZñÑ]+)[^\\x2E]*([\\x2E]+|\\Z)","$1 --- ");

        l2 = text.replaceAll("[^a-zA-ZñÑ]*[a-zA-ZñÑ]+[^a-zA-ZñÑ]*","w");
        lb = text.replaceAll("[^a-zA-ZñÑ]*[a-zA-ZñÑ]+[^a-zA-ZñÑ]*","$0 --- ");
        o.println("l1: " + l1);
        o.println("la: " + la);
        o.println("laa: " + laa);
        o.println("Phrases: " + l1.length());
        o.println("l2: " + l2); 
        o.println("lb: " + lb);
        o.println("Words: " + l2.length());
        o.close();
   }}

