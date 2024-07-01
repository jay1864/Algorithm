import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);
        int n = scan.nextInt();

        // 공백(N-현재 줄) + 별(현재 줄)
        for(int i=1; i<n+1; i++){
            for(int space = n-i; space>0; space--){
                System.out.print(" ");
            }
            for(int star=1; star<i+1; star++){
                System.out.print("*");
            }
            System.out.println();
        }
    }
}