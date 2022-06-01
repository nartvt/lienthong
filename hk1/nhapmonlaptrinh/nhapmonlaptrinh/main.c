//
//  main.c
//  nhapmonlaptrinh
//
//  Created by nartvt on 17/04/2022.
//

#include "stdio.h"
#include "math.h"
#include "string.h"

typedef enum{false,true}bool;
int congHaiSo(int a,int b) {
    return a+b;
}

bool kiemTraSoChan(int n){
    if (n%2 ==0){
        return true;
    }
    return false;
}

bool kiemTraSoNguyenTo(int n){
    if (n<2){
        return false;
    }
    
    for (int i = 2;i <= sqrt(n);i++){
        if(n%i==0){
            printf("%d chia het cho %d\n",n,i);
            return false;
        }
    }
    return true;
}

int nhapKiemTraSoNguyenTo() {
    
    int n =0;
    printf("Nhap gia tri N: ");
    scanf("%d", &n);
    
    if(kiemTraSoNguyenTo(n)){
        printf("%d la So Nguyen To\n",n);
    }else{
        printf("%d Khong phai la so nguyen to\n",n);
    }
    return 0;
}

struct Person {
    char name[50];
    int age;
    float salary;
};

typedef struct Person Person;
int main() {
    Person person;
    strcpy(person.name,"Tran Van Tai");
    person.age = 50;
    person.salary = 25000000;
    
    printf("Person Name: %s\n", person.name);
    printf("Person Age: %d\n", person.age);
    printf("Person Salary: %.0f\n", person.salary);
    return 0;
}

