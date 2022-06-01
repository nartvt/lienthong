#include "stdio.h"

int main()
{
    int a = 0, b = 0;
    printf("Nhap A: ");
    scanf("%d", &a);
    printf("Nhap B: ");
    scanf("%d", &b);
    printf("%d + %d = %d", a, b, (a + b));
    return 0;
}

int findPrime(int n){
    if (n%2==0){
        return 0;
    }
    return 1;
}
