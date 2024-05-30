#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

int solution(int num1, int num2) {
    double result = 1000 * ((double)num1/num2);
    int answer = floor(result);
    return answer;
}