import java.util.Scanner;

public class Main {

    private static boolean isEven(int n) {
        return n % 2 == 0;
    }

    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            int a = scanner.nextInt();
            int b = scanner.nextInt();
            String output = isEven(a) || isEven(b) ? "Even" : "Odd";
            System.out.println(output);
        }
    }
}
