#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

int* solution(long long n) {
    // 리턴할 값은 메모리를 동적 할당해주세요.
    int* answer = (int*)malloc(sizeof(int)*12);
    
    int temp = 0;
    while(0<n){
        answer[temp++] = n%10;
        n /= 10;
    }

    return answer;
}