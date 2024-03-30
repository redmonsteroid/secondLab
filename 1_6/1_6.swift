import Foundation

func checkChar(_ str: String) -> String {
    let glasLet = "aeiouyAEIOUY"
    let soglasLet = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    var glasCount = 0
    var soglasCount = 0
    
    for ch in str {
        if glasLet.contains(ch) {
            glasCount += 1
        } else if soglasLet.contains(ch) {
            soglasCount += 1
        }
    }
    
    if glasCount > soglasCount {
        return "Да"
    } else if glasCount < soglasCount {
        return "Нет"
    } else {
        return "Одинаково"
    }
}

print("Enter your string:")
if let str = readLine() { // конструкция для опц связывания 
    print(checkChar(str))
}
