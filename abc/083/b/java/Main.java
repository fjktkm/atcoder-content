import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {
    public static int getDigitSum(int n) {
        int sum = 0;
        while (n > 0) {
            sum += n % 10;
            n /= 10;
        }
        return sum;
    }

    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            int rangeMax = scanner.nextInt();
            int digitSumMin = scanner.nextInt();
            int digitSumMax = scanner.nextInt();

            int sum = IntStream.rangeClosed(1, rangeMax)
                    .filter(n -> digitSumMin <= getDigitSum(n) && getDigitSum(n) <= digitSumMax)
                    .sum();

            System.out.println(sum);
        }
    }
}
