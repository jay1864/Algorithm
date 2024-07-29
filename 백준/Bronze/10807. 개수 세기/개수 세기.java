import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num, v, count = 0;
        int[] arr;

        num = sc.nextInt(); // 정수 개수
        sc.nextLine();
        arr = new int[num]; // 정수 배열
        for(int i = 0; i < num; i++) {
            arr[i] = sc.nextInt();
        }
        sc.nextLine();
        v = sc.nextInt();   // 정수 v

        for(int a:arr){
            if(a == v) count += 1;
        }
        System.out.println(count);
    }
}
