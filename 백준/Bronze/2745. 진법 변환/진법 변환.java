import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String n = sc.next();
        int b = sc.nextInt();

        int len = n.length();
        ArrayList<Character> list = new ArrayList<>();
        for(int i=0; i<len; i++){
            list.add(n.charAt(i));
        }

        int result = 0;
        int index = len-1;
        for(char c : list){
            if(c >= 'A'){
                result += (c-'A'+10) * (int)Math.pow(b, index);
            }else{
                result += (c-'0') * (int)Math.pow(b, index);
            }
            index--;
        }
        System.out.println(result);
    }
}
