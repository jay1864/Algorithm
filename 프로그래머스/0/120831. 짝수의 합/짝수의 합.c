#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

// n이 짝수인 경우, n/2의 값이 짝수의 개수가 된다.
// n이 홀수인 경우, (n-1)/2의 값이 짝수의 개수가 된다.
// 수열의 합 = 항의 개수 x (첫 번째 항 + 마지막 항) / 2

int solution(int n) {
    int answer = 0, count = 0;
    
    count = floor(n/2);
    answer = count * (2 + count*2) / 2;
    
    return answer;
}