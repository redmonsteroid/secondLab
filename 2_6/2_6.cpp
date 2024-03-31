#include <iostream>
#include <vector>
using namespace std;

int countNum(vector<int> nums){
    int result = 0;
    for (int num : nums){
        int count = 0;
        if (num >= 100){ // кол во чисел 
        while (num != 0){
            num /= 10;
            count++;
        }
        if (count % 2 != 0){
            result++;
        }
    }
    }
    return result;
}


int  main(){
    vector<int> nums;
    int num;
    cout << "Enter a list of numbers (to end enter -1):" << endl;
    while (cin >> num && num != -1) { // пока ввод соответствует num ( тоесть это цифра ) и не введено -1
        nums.push_back(num);
    }
    cout  << countNum(nums) << endl;
    return 0;
}