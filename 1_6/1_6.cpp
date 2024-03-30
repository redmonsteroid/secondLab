#include <iostream>
#include <string>
using namespace std;
string check_char (string str){
    string glasLet = "aeiouyAEIOUY";
    string soglasLet = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ";
    int glasCount = 0 , soglasCount = 0;
    for (char ch : str){
        if (glasLet.find(ch) != string::npos){ // сравнение является ли символ глассной 
            glasCount ++; // npos - значение если символ не совпадает 
        } else if (soglasLet.find(ch) != string::npos){
            soglasCount ++;
        }
    }
    if (glasCount > soglasCount) {
        return "Да";
    } else if (glasCount < soglasCount) {
        return "Нет";
    } else if (glasCount == soglasCount ){
        return "Одинаково";
    }
}
int main () {
    string str;
    cout << "Enter your string" << endl;
    getline(cin , str);

    string result = check_char(str);
    cout << result << endl;
    return 0;
}