using System;

class Program{

    static string CheckChar(string str){
    string glasLet = "aeiouyAEIOUY";
    string soglasLet = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ";
    int glasCount = 0 , soglasCount = 0;

    foreach (char ch in str){ // ну буквально переводится. Для каждой буквы в строке
        if (glasLet.Contains(ch)){
            glasCount++;
        }
        else if (soglasLet.Contains(ch)){
            soglasCount++;
        }
    }

     if (glasCount > soglasCount) {
        return "Да";
    } else if (glasCount < soglasCount) {
        return "Нет";
    } else if (glasCount == soglasCount ){
        return "Одинаково";
    }
    return "error"; // Без этого не компилируется. Похоже ему обязательно нужен хоть какой то 100% вывод 
} // А в c++ скомпилируется но с предупреждением 

    static void Main(){
        Console.WriteLine("Enter string: ");
        Console.WriteLine(CheckChar(Console.ReadLine()));
    }
}
