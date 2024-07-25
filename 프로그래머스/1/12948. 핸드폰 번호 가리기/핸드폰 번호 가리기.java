class Solution {
    public String solution(String phone_number) {
        String answer = "*";
        int num_length = phone_number.length();
        answer = answer.repeat(num_length-4) + phone_number.substring(num_length-4);
        return answer;
    }
}

// length: 배열 길이, length(): 문자열 길이
// repeat(n) : 문자열 n번 반복
// substring(n,m) : 문자열 n번부터 m번까지 자르기