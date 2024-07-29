import java.util.Scanner;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num, max;
        double sum=0, result;
        int[] arr;

        num = sc.nextInt();
        sc.nextLine();
        arr = new int[num];
        for(int i = 0; i < num; i++) {
            arr[i] = sc.nextInt();
        }

        Arrays.sort(arr);
        max = arr[num-1];

        for(int score : arr){
            sum  += ((double)score/max)*100;
        }
        result= sum/num;
        System.out.println(result);
    }
}
