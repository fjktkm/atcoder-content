import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            int coin500 = scanner.nextInt();
            int coin100 = scanner.nextInt();
            int coin50 = scanner.nextInt();
            int total = scanner.nextInt();

            int count = 0;
            for (int i = 0; i <= coin500; i++) {
                for (int j = 0; j <= coin100; j++) {
                    for (int k = 0; k <= coin50; k++) {
                        if (i * 500 + j * 100 + k * 50 == total) {
                            count++;
                        }
                    }
                }
            }

            System.out.println(count);
        }
    }
}
