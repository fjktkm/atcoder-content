function Main(input) {
    const [a, b] = input.split("\n")[0].split(" ").map(Number);
    const output = (a % 2 === 0 || b % 2 === 0) ? "Even" : "Odd";
    console.log(output);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
