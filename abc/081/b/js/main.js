function Main(input) {
    input = input.split("\n");
    const num_list = input[1].trim().split(' ').map(Number);

    num_list_or = num_list.reduce((a, b) => a | b);

    let count = 0;
    while (num_list_or % 2 === 0) {
        count++;
        num_list_or /= 2;
    }

    console.log(count);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
