use std::io;

fn checkChar(str: &str) -> String {
    let glasLet = "aeiouyAEIOUY";
    let soglasLet = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ";
    let mut glasCount = 0;
    let mut soglasCount = 0;

    // Итерируемся по символам строки str
    for ch in str.chars() {
        if glasLet.contains(ch) {
            glasCount += 1;
        } else if soglasLet.contains(ch) {
            soglasCount += 1;
        }
    }

    if glasCount > soglasCount {
        String::from("Да")
    } else if glasCount < soglasCount {
        String::from("Нет")
    } else {
        String::from("Одинаково")
    }
}

fn main() {
    println!("Enter your string:");
    let mut str = String::new();
    io::stdin().read_line(&mut str).expect("Failed to read line");
    let result = checkChar(&str);
    println!("{}", result);
}
