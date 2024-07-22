import java.util.Arrays;
class Solution {
    public int[] solution(int[] arr, int divisor) {
        int[] list = new int[arr.length];
        Arrays.sort(arr);
        
        int index=0;
        for(int i=0;i<arr.length;i++){
            if(arr[i]%divisor==0){
                list[index++] = arr[i];
            }
        }
        if(index==0) list[index++]=-1;
        
        int[] answer = Arrays.copyOf(list, index);
        return answer;
    }
}