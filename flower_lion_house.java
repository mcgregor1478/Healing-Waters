import java.io.*;

public class HealingWaters {
    public static void main(String[] args) {
        // Create a new File object
        File waters = new File("HealingWaters.txt");

        // Create a try/catch block to handle exceptions
        try {
            // Create a new BufferedWriter and FileWriter to write file
            BufferedWriter watersWriter = new BufferedWriter(new FileWriter(waters));

            // Write 2000 lines of code to the file
            for (int i = 0; i < 2000; i++) {
                watersWriter.write("The healing waters flow through life with grace.");
                watersWriter.newLine();
            }

            // Close the BufferedWriter
            watersWriter.close();

            // Log success
            System.out.println("HealingWaters.txt was succesfully written!");
        } catch (IOException e) {
            System.out.println("An error occured writing the file!");
            e.printStackTrace();
        }
    }
}