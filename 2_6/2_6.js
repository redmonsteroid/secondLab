const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Enter numbers: ', (input) => { // фактически задаём вопрос и ждем ответ 
    const numbers = input.split(" ");
    let count = 0;
    
    for (let number of numbers) {
        if (number.trim().length % 2 !== 0 && parseInt(number) > 2) {
            count++;
        }
    }

    console.log(count);
    rl.close();
});
