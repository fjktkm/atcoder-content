function Main(input) {
    const [coin500, coin100, coin50, total] = input.split("\n").map(Number);
    let count = 0;
    for (let i = 0; i <= coin500; i++) {
        for (let j = 0; j <= coin100; j++) {
            for (let k = 0; k <= coin50; k++) {
                if (500 * i + 100 * j + 50 * k === total) {
                    count++;
                }
            }
        }
    }
    console.log(count);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
