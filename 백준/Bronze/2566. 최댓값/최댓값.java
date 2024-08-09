import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[][] numList = new int[9][9];
        for (int i = 0; i < 9; i++) {
            for (int j = 0; j < 9; j++) {
                numList[i][j] = sc.nextInt();
            }
        }

        int max = 0;
        int col = 1, row = 1;
        for (int i = 0; i < 9; i++) {
            for (int j = 0; j < 9; j++) {
                if (numList[i][j] > max) {
                    max = numList[i][j];
                    row = i+1;
                    col = j+1;
                }
            }
        }

        System.out.println(max);
        System.out.println(row+" "+col);

    }
}
