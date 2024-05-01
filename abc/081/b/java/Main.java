import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            List<Integer> numList = scanner.tokens()
                    .skip(1)
                    .map(Integer::parseInt)
                    .toList();

            int numListOr = numList.stream()
                    .reduce((a, b) -> a | b).get();

            int count = 0;
            while (numListOr % 2 == 0) {
                numListOr /= 2;
                count++;
            }

            System.out.println(count);
        }
    }
}
