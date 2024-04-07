function checkDate(num){
    const daysInMonth = [31,28,31,30,31,30,31,31,30,31,30,31];
    let day = 0 , month = 0;
    if (num >= 11 && num <= 99) {
        return true;
    }
    if (num >= 101 && num <= 999) {
        day = Math.floor(num / 10);
        month = num % 10;
        if (daysInMonth[month - 1] >= day) {
            return true;
        }
        day = Math.floor(num / 100);
        month = num % 100;
        if (month > 0 && month <= 12 && daysInMonth[month - 1] >= day) {
            return true;
        }
    }
    if (num >= 1000 && num < 9999) {
        day = Math.floor(num / 100);
        month = num % 100;
        if (month > 0 && month <= 12 && daysInMonth[month - 1] >= day) {
            return true;
        }
    }
    return false;
}
let count = parseInt(prompt());
let numbers = new Array(count);
for (let i = 0; i < count; ++i) {
    numbers[i] = parseInt(prompt());
}

for (let num of numbers) {
    if (checkDate(num)) {
        console.log("YES ");
    } else {
        console.log("NO ");
    }
}