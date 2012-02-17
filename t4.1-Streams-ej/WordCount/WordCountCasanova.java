import java.io.*;

class WordCount {
	
    public static void main(String args[]) throws Exception {
        if (2 < args.length)
            throw (new Exception("Syntax: WordCount <src> <dest>"));
        
        if ((2 == args.length)&&(args[0]).equals(args[1]))
            throw (new Exception("<src> and <dest> must be different"));

        BufferedReader i = new BufferedReader(new InputStreamReader(System.in));
        if (args.length > 0)
            i = new BufferedReader(new FileReader(args[0]));

        PrintWriter o = new PrintWriter(System.out);        
        if (args.length > 1)
            o = new PrintWriter(new FileWriter(args[1]));

        String line, text = "";

        while ((line = i.readLine()) != null) {
            if (line.equals(""))
                continue; // Ignoramos lineas en blanco
            text = text + " " + line; // Evitamos problemas tipos
                                        // palabra1\npalabra2 =>
                                        // palabra1palabra2 añadiendo un blanco
        }

        if (text.matches("[^a-zA-Z0-9ñÑáéíóúüÁÉÍÓÚÜçÇ]*\\Z"))
            text = ""; // elimina ficheros sin palabras
               
        o.println("Words: " + text.replaceAll("[^a-zA-Z0-9ñÑáéíóúüÁÉÍÓÚÜçÇ]*[a-zA-Z0-9ñÑáéíóúüÁÉÍÓÚÜçÇ]+[^a-zA-Z0-9ñÑáéíóúüÁÉÍÓÚÜçÇ]*","w").length());
        
        o.close();
    }
}