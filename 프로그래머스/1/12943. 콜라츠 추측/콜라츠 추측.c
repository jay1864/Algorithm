#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

/* 
num=6263331일때, 연산 과정 중 num의 크기가 커지면서 오버플로우 2번 발생.
num을 int -> long으로 형변환 해줘야함.
*/

int solution(int num) {
   long answer = num;

    for(int cnt=0; cnt<500; cnt++)
    {
        if (answer == 1) return cnt;
        answer = (answer % 2 == 0) ? (answer / 2) : (3 * answer + 1); 
    }
    return -1;
}