import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Создаем объект Scanner для чтения ввода с консоли
        System.out.println("Enter your string:"); 
        String str = scanner.nextLine(); // Считываем введенную строку с консоли и сохраняем в переменную str
        
        String result = checkChar(str);
        System.out.println(result);
    }

    public static String checkChar(String str) {
        String glasLet = "aeiouyAEIOUY";
        String soglasLet = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ";
        int glasCount = 0;
        int soglasCount = 0;

        for (int i = 0; i < str.length(); i++) {
            char ch = str.charAt(i);
            if (glasLet.indexOf(ch) != -1) {
                glasCount++;
            } else if (soglasLet.indexOf(ch) != -1) {
                soglasCount++;
            }
        }

        if (glasCount > soglasCount) {
            return "Да";
        } else if (glasCount < soglasCount) {
            return "Нет";
        } else {
            return "Одинаково";
        }
    }
}
