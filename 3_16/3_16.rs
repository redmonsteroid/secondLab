use std::io;

// Function to check if the given number can represent a valid date
fn check_date(num: i32) -> bool {
    let mut i = 1;
    while i < num {
        let day = num / i;
        let month = num % i;
        if day >= 1 && day <= 31 && month >= 1 && month <= 12 {
            return true;
        }
        i *= 10;
    }
    false
}

fn main() {
    let mut input_string = String::new();
    io::stdin().read_line(&mut input_string).expect("Failed to read line");
    let count: usize = input_string.trim().parse().expect("Input not an integer");

    let mut numbers = Vec::new();
    for _ in 0..count {
        input_string.clear(); // Clear the string to reuse it for the next number
        io::stdin().read_line(&mut input_string).expect("Failed to read line");
        let num: i32 = input_string.trim().parse().expect("Input not an integer");
        numbers.push(num);
    }

    for &num in &numbers {
        if check_date(num) {
            print!("YES ");
        } else {
            print!("NO ");
        }
    }
}