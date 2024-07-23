class Solution {
    public int solution(int[] absolutes, boolean[] signs) {
        int answer=0;
        if(absolutes.length ==0) answer=0;
        else{
            for(int i=0; i<absolutes.length; i++){
                if(signs[i]) answer+=absolutes[i];
                else if(!signs[i]) answer-=absolutes[i];
            }
        }
        return answer;
    }
}