#include <stdio.h>
#include <stdbool.h>

int timMax(int a[]) {
    int size = sizeof(a);
    int max = a[0];
    for (int i = 1; i < size; i++) {
        if (a[i] > max) {
            max = a[i];
        }
    }
    return max;
}

bool findX(int a[], int x) {
    int size = sizeof(a);
    for (int i = 1; i < size; i++) {
        if (a[i] == x) {
            return true;
        }
    }
    return false;
}

void inputArray(int a[], int n) {
    for (int i = 0; i < n; i++) {
        printf("Nhap a[%d]=", i);
        scanf("%d", &a[i]);
    }
}

void outputArray(int a[], int n) {
    for (int i = 0; i < n; i++) {
        printf("%d,", a[i]);
    }
}

void removeX(int a[], int n, int x) {
    int index = -1;
    for (int i = 0; i < n; i++) {
        if (a[i] = x) {
            index = i;
            break;
        }
    }
    if (index == -1) {
        printf("Khong co X de xoa");
        return;
    }
    return;
}

void sortArrayASC(int a[], int n) {
    for (int i = 0; i < n - 1; i++) {
        if (a[i] > a[i + 1]) {
            a[i] = a[i] + a[i + 1];
            a[i + 1] = a[i] - a[i + 1];
            a[i] = a[i] - a[i + 1];
            i = -1;
        }
    }
}

void sortArrayDESC(int a[], int n) {
    for (int i = 0; i < n - 1; i++) {
        if (a[i] < a[i + 1]) {
            a[i] = a[i] + a[i + 1];
            a[i + 1] = a[i] - a[i + 1];
            a[i] = a[i] - a[i + 1];
            i = -1;
        }
    }
}

int binarySearchTreeASC(int arr[], int n, int x) {
    int l = 0;
    int m = 0;
    int r = n - 1;
    while (l <= r) {
        m = (l + r) / 2;
        if (arr[m] == x) {
            return 1;
        }
        if (x > arr[m]) {
            l = m + 1;
        } else {
            r = m - 1;
        }
    }
    return 0;
}
int binarySearchTreeDESC(int arr[], int n, int x) {
    int l = 0;
    int m = 0;
    int r = n - 1;
    while (l <= r) {
        m = (l + r) / 2;
        if (arr[m] == x) {
            return 1;
        }
        if (x < arr[m]) {
            l = m + 1;
        } else {
            r = m - 1;
        }
    }
    return 0;
}
void swap(int a, int b){
    a = a + b;
    b = a - b;
    a = a -b;
}
int findIndexOfMinValue(int arr[], int n){
    int minIndex = 0;
    for(int i=0;i<n;i++){
        if(arr[i] < arr[minIndex]){
            minIndex = i;
        }
        swap(arr[minIndex], arr[i]);
    }
    return minIndex;
}


int main() {
    int n = 0;
    printf("Nhap So phan tu cua mang: ");
    scanf("%d", &n);
    int a[n];
    inputArray(a, n);
    int result = findIndexOfMinValue(a, n);
    if (result >=0) {
        printf("Found At %d", result);
    }
    if (result == 0) {
        printf("Not Found");
    }
    return 0;
}
