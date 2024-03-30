function checkChar(str){ // сравниваем кол во гласных и согласных букв
    const glasLet = "aeiouyAEIOUY";
    const soglasLet = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ";
    let glasCount = 0;
    let soglasCount = 0;


    for (let i = 0; i < str.length; i++) {
        if (glasLet.includes(str[i])) {
            glasCount++;
        } else if (soglasLet.includes(str[i])) {
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
}


console.log(checkChar(prompt("Enter your string "))); // promt - выводит своё сообщенеи и вводит строку