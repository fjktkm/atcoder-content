function Main(input) {
    const [rangeMax, digitSumMin, digitSumMax] = input.split(" ").map(Number);

    const digitSum = (n) => {
        return n.toString().split("").map(Number).reduce((acc, cur) => acc + cur, 0);
    }

    const sum = Array.from({ length: rangeMax }, (_, i) => i + 1)
        .filter((n) => {
            const sum = digitSum(n);
            return sum >= digitSumMin && sum <= digitSumMax;
        }).reduce((acc, cur) => acc + cur, 0);

    console.log(sum);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
