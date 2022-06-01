#include "stdio.h"
#include "string.h"
#include "stdbool.h"
#include "math.h"

int congHaiSo(int a, int b) {
    return (a + b);
}

typedef struct Person {
    char name[50];
    int age;
    float salary;
} Person;

void printPerson() {
    Person per;
    strcpy(per.name, "Tran Van Tai");
    per.age = 20;
    per.salary = 25000;
    printf("Person Name: %s\n", per.name);
    printf("Person Age: %d\n", per.age);
    printf("Person Salary: %.0f\n", per.salary);
}

/*
 * Viết chương trình nhập vào số giây. Tính và in ra số ngày, số giờ, số phút,
số giây tương ứng .
 */
void baitap11() {
    int seconds = 0;
    do {
        printf("Nhap Vao So Giay: ");
        scanf("%d", &seconds);

        if (seconds < 0) {
            printf("Số Giây Phải lớn hơn không, Nhập lại \n");
        }
    } while (seconds < 0);

    int day = 0;
    int hours = 0;
    int minute = 0;

    const int secondOfMinute = 60;
    const int secondsOfHours = secondOfMinute * 60;
    const int secondsOfDay = secondsOfHours * 24;

    if (seconds > secondsOfDay) {
        day = seconds / secondsOfDay;
        seconds = seconds % secondsOfDay;
    }
    if (seconds > secondsOfHours) {
        hours = seconds / secondsOfHours;
        seconds = seconds % secondsOfHours;
    }
    if (seconds > secondOfMinute) {
        minute = seconds / secondOfMinute;
        seconds = seconds % secondOfMinute;
    }

    if (day > 0) {
        printf("%d Ngày", day);
    }
    if (hours > 0) {
        printf(" %d Giờ", hours);
    }
    if (minute > 0) {
        printf(" %d Phút", minute);
    }
    printf(" %d Giây\n", seconds);


}

// Dùng cú pháp lệnh ?: để tìm số lớn nhất, nhỏ nhất của 2 số nguyên
void bai2_1_1() {
    int a = 10;
    int b = 30;
    int max = 0;
    int min = 0;
    max = a > b ? a : b, min = a;
    printf("Max La: %d\n", max);
    printf("Min La:  %d", min);
}

void tinhTienDien() {
    int soKw = 0;
    do {
        printf("Nhập số KW điện sử dụng: ");
        scanf("%d", &soKw);
        if (soKw < 0) {
            printf("Số điện phải lớn hơn không , vui lòng nhập lại !");
        }
    } while (soKw < 0);

    float soTienDien = 0.0;
    if (soKw < 10) {
        soTienDien = soKw * 1000;
    } else if (soKw < 50) {
        soTienDien = (9) * 1000 + (soKw - 9) * 1500;
    } else if (soKw < 150) {
        soTienDien = (9) * 1000 + (40) * 1500 + (soKw - 49) * 2000;
    } else if (soKw < 300) {
        soTienDien = (9) * 1000 + (40) * 1500 + (100) * 2500 * (soKw - 149) * 2500;
    } else if (soKw >= 300) {
        soTienDien = (9) * 1000 + (40) * 1500 + (100) * 2500 * (250) * 2500 + (soKw - 299) * 4000;
    }
    printf("Tổng số tiền điện cho %d Kw điện thiêu thụ là: %.2f\n", soKw, soTienDien);

}

/*
 * Nhập h, in ra hình tam giác cân các dấu *
Ví dụ: h=4, ta in ra như sau
   *
  ***
 *****
*******
 */

void baitap2_2_8_2() {
    int n = 0;
    printf("Nhập N: ");
    scanf("%d", &n);

    int j = 1;
    for (int i = 0; i < n; i++) {
        int temp = 2 * i + 1;
        int space = n - i -1;
        while(space >0){
            printf(" ");
            space--;
        }
        while (temp > 0) {
            printf("*");
            temp --;
        }
        printf("\n");
    }
}

void inBangCuuChuong(){
    int n = 0;
    printf("Nhập N: ");
    scanf("%d", &n);
    for (int i =1; i<=9;i++){
        printf("%d x %d = %d\n", n,i,n*i);
    }
}

bool isNamNhuan(int year){
    if(year <1 ){
        return false;
    }
    if(year%400 == 0){
        return true;
    }
    if(year%4 == 0 && year%100 != 0){
        return true;
    }
    return false;
}

bool kiemTraNgay(int day,int month, int year){
    switch (month){
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            if(day < 1 || day > 31){
                return false;
            }
            return true;
        case 4:
        case 6:
        case 9:
        case 11:
            if (day < 1 || day > 30){
                return false;
            }
            return true;
        case 2:
            if(day < 1 || day > 29) {
                return false;
            }
            if(!isNamNhuan(year)){
                if(day > 28){
                    return false;
                }
            }
            return true;
        default:
            return false;
    }
}
int layNgay(int month, int year){
    int ngay = 0;
    switch (month){
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            ngay = 31;
            break;
        case 4:
        case 6:
        case 9:
        case 11:
            ngay = 30;
            break;
        case 2:
            if(isNamNhuan(year)){
               ngay = 29;
            }else {
                ngay = 28;
            }
            break;
    }
    return ngay;
}
void kiemTraNgayThangNam(){
    int ngay = 0;
    int thang = 0;
    int nam = 0;

    do{
        printf("Nhập Năm: ");
        scanf("%d", &nam);
        if(nam < 1){
            printf("Năm không hợp lệ, năm phải > 0, nhập lại !\n");
        }
    }while(nam < 1);
    do{
        printf("Nhập Tháng: ");
        scanf("%d", &thang);
        if(thang < 1 || thang > 12){
            printf("Tháng không hợp lệ, tháng phải > 0 và < 12, nhập lại !\n");
        }
    }while(thang < 1 || thang > 12);

    do{
        printf("Nhập Ngày: ");
        scanf("%d", &ngay);
        if(ngay < 1){
            printf("Ngày không hợp lệ, ngày phải > 0, nhập lại !\n");
        }
        switch (thang){
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                if(ngay > 31){
                    printf("Ngày không hợp lệ, tháng %d phải có 1< và < %d ngày, nhập lại !\n", thang,31);
                }
                break;
            case 4:
            case 6:
            case 9:
            case 11:
                if(ngay > 30){
                    printf("Ngày không hợp lệ, tháng %d phải có 1< và < %d ngày, nhập lại !\n", thang,30);
                }
                break;
            case 2:
                if(isNamNhuan(nam)){
                    if(ngay > 29){
                        printf("Ngày không hợp lệ, năm nhuận, tháng %d phải có 1< và < %d ngày, nhập lại !\n", thang,29);
                    }
                    break;
                }else{
                    if(ngay > 28){
                        printf("Ngày không hợp lệ, năm nhuận, tháng %d phải có 1< và < %d ngày, nhập lại !\n", thang,28);
                    }
                    break;
                }
        }
    }while(!kiemTraNgay(ngay,thang,nam));

    printf("%d/%d/%d", ngay,thang,nam);
}

void timNgayTruocDo(){
    int ngay = 0;
    int thang = 0;
    int nam = 0;

    printf("Nhập Năm: ");
    scanf("%d", &nam);
    printf("Nhập Tháng: ");
    scanf("%d", &thang);
    printf("Nhập Ngày: ");
    scanf("%d", &ngay);

    int ngayTruoc = ngay;
    int thangTruoc = thang;
    int namTruoc = nam;

    ngayTruoc -= 1;
    if(ngayTruoc < 1){
        thangTruoc -= 1;
        if(thangTruoc < 1){
            thangTruoc = 12;
            namTruoc -= 1;
        }
    }
    if(namTruoc < 1){
        namTruoc = 0;
    }
    if(ngayTruoc < 1){
        ngayTruoc = layNgay(thangTruoc,namTruoc);
    }
    printf("%d/%d/%d => %d/%d/%d", ngay,thang,nam, ngayTruoc,thangTruoc,namTruoc);
}
void timNgaySauDo(){
    int ngay = 0;
    int thang = 0;
    int nam = 0;

    printf("Nhập Năm: ");
    scanf("%d", &nam);
    printf("Nhập Tháng: ");
    scanf("%d", &thang);
    printf("Nhập Ngày: ");
    scanf("%d", &ngay);

    int ngaySau = ngay;
    int thangSau = thang;
    int namSau = nam;

    ngaySau += 1;
    if(ngaySau > layNgay(thang,nam)){
        ngaySau = 1;
        thangSau += 1;
    }
    if(thangSau > 12){
        thangSau = 1;
        namSau ++;
    }
    printf("%d/%d/%d => %d/%d/%d", ngay,thang,nam, ngaySau,thangSau,namSau);
}

void tinhTongTuDauNamDenNgayMoiNhap(){
    int ngay = 0;
    int thang = 0;
    int nam = 0;

    printf("Nhập Năm: ");
    scanf("%d", &nam);
    printf("Nhập Tháng: ");
    scanf("%d", &thang);
    printf("Nhập Ngày: ");
    scanf("%d", &ngay);

    int tong = 0;
    if(thang == 1){
        tong = 15;
    }else{
        int thangTemp = thang -1;
        while(thangTemp > 0){
            tong += layNgay(thangTemp,nam);
            thangTemp --;
        }
        tong += ngay;
    }
    printf("\nTổng số ngày từ đầu năm đến ngày nhập %d/%d/%d là: %d ngày\n", ngay,thang,nam,tong);
}

void timUCLN(){
    int a = 0;
    int b = 0;
    printf("Nhap A: ");
    scanf("%d", &a);
    printf("Nhap B: ");
    scanf("%d", &b);
    while(a!=b){
        if(a > b){
            a = a - b;
        }
        if(b > a){
            b = b -a;
        }
    }
    printf("\nUCLN: %d\n", a);
}

int giaiThua(int n){
    int value  = 1;
    for (int i =1;i <= n; i++){
        value = value * i;
    }
    return value;
}
void tinhSinX(){
    int x = 0;
    printf("Nhap x: ");
    scanf("%d", &x);
    float epsilon = 0.001;
    float checkLimit = -1;
    int i  = 0;
    float sinValue = 0.0;
    while(checkLimit < epsilon){
        printf("\nBefore sinValue = %.3f\n", sinValue);
        sinValue +=(pow(-1,i) * pow(x, (2 *i) + 1)) / giaiThua(2 * i + 1);
        printf("\nAfter sinValue = %.3f\n", sinValue);
        int temp = sinValue / 1;
        checkLimit = sinValue - temp;
        printf("\ntemp = %d\n", temp);
        printf("\nsinValue = %.3f\n", sinValue);
        printf("\ncheckLimit = %.3f\n", checkLimit);
        i++;
    }
    printf("\nSIN(%d) = %.3f\n", x, sinValue);
}


int x,y;
void thutuc()
{ int x,y;
    x=3 ; y=4 ;
}
int main()
{ x = 5; y = 4 ;
    thutuc() ;
    printf( "%d,%d",x,y ) ;
}