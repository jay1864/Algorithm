import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // 문자열 S를 입력받습니다.
        String S = scanner.nextLine();

        // 각 알파벳에 대한 위치를 저장할 배열을 선언하고 -1로 초기화합니다.
        int[] alphabetPositions = new int[26];
        for (int i = 0; i < 26; i++) {
            alphabetPositions[i] = -1;
        }

        // 문자열 S를 순회하면서 각 알파벳의 첫 등장 위치를 기록합니다.
        for (int i = 0; i < S.length(); i++) {
            char currentChar = S.charAt(i);
            int index = currentChar - 'a';

            // 아직 기록되지 않은 알파벳 위치만 업데이트합니다.
            if (alphabetPositions[index] == -1) {
                alphabetPositions[index] = i;
            }
        }

        // 결과를 출력합니다.
        for (int i = 0; i < 26; i++) {
            System.out.print(alphabetPositions[i] + " ");
        }
    }
}
