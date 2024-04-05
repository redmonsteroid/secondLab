#include <iostream>
#include <vector>
using namespace std;
bool checkDate(int num) {
    const vector <int> daysInMounth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}; // перечисляем сколько дней в каком месяце
    int day, mounth;
    if (num >= 11 && num <=99){ // если введено 2х значное, то в любом случае верно
        return 1;
    }
    if (num >= 101 && num <= 999){// три знака
        day = num / 10; // первые 2 цифры день, последняя месяц
        mounth = num % 10;
        if (daysInMounth[mounth-1] >= day){
            return 1;
        }
        day = num / 100;// первая цифра день, послдедние две месяц
        mounth = num % 100;
        if (daysInMounth[mounth-1] >= day){
            return 1;
        }
    }
    if (num >= 1000 && num < 9999){// для 4х значного
        day = num /100;
        mounth = num % 100;
        if (daysInMounth[mounth-1] >= day){
            return 1;
        }
    }
    return 0;
}

int main() {
    int count;
    cin >> count;
    vector<int> numbers;
    for (int i = 0; i < count; ++i) {
        int n;
        cin >> n;
        numbers.push_back(n) ;
    }
    for (int n: numbers){
        cout << n << " ";
    }
    for (int n : numbers){
        if (checkDate(n)==1){
            cout << "Yes";
        } else {
            cout << "NO";
        }
    }
    return 0;
}