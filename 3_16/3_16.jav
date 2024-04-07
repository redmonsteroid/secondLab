import java.util.ArrayList;
import java.util.Scanner;

public class DateChecker {
    public static boolean checkDate(int num) {
        for (int i = 1; i < num; i *= 10) {
            int day = num / i;
            int month = num % i;
            if (day >= 1 && day <= 31 && month >= 1 && month <= 12) {
                return true;
            }
        }
        return false;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int count = scanner.nextInt();

        ArrayList<Integer> numbers = new ArrayList<>(count);
        for (int i = 0; i < count; ++i) {
            numbers.add(scanner.nextInt());
        }

        StringBuilder result = new StringBuilder();
        for (int num : numbers) {
            if (checkDate(num)) {
                result.append("YES ");
            } else {
                result.append("NO ");
            }
        }

        System.out.println("Output: " + result.toString().trim());
    }
}