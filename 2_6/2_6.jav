import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter numbers: ");
        String input = scanner.nextLine(); 
        String[] numbers = input.split(" "); // Разбиваем строку на пробелы 
        int count = 0; 
        
        for (String number : numbers) {
            if (!number.isEmpty() && number.length() % 2 != 0 && number.length() > 2) {
                count++; 
            }
        }
        
        System.out.println(count);
        scanner.close();
    }
}
