import java.lang.Math;

class Solution {
    public long solution(int a, int b) {       
        // 1+2+..+n = n*(n+1)/2 = (총 갯수)*(처음+마지막)/2
        // a+(a+1)+...+(b-1)+b = ((b-a)+1)*(a+b)/2
        long answer = 0;
        long count = Math.abs(b-a)+1;
        answer = count*(a+b)/2;
        
        return answer;        
    }
}