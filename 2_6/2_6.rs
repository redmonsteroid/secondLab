use std::io::{self, BufRead};

fn main() {
    println!("Enter numbers : ");

    let stdin = io::stdin();
    let mut input = String::new();
    stdin.read_line(&mut input).expect("Failed to read line");

    let numbers: Vec<&str> = input.trim().split_whitespace().collect(); // вводим числа в вектор и разделяем по пробелу
    let mut count = 0;

    for number in numbers {
        if let Some(num) = number.parse::<i32>().ok() { // переводим в цифры
            if num >= 100 {
                let mut temp_num = num;
                let mut digit_count = 0;
                while temp_num != 0 {
                    temp_num /= 10;
                    digit_count += 1;
                }
                if digit_count % 2 != 0 {
                    count += 1;
                }
            }
        }
    }

    println!("{}", count);
}
