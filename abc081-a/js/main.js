function Main(input) {
    const placement = input.trim();
    const count = Array.from(placement).filter(c => c === '1').length;
    console.log(count);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
