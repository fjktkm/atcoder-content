import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            String placement = scanner.next();
            long count = placement.chars().filter(c -> c == '1').count();
            System.out.println(count);
        }
    }
}
