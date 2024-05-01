#!/usr/bin/env rust-script

//! ```cargo
//! [dependencies]
//! proconio = "0.4.5"
//! ```

use proconio::input;

fn count_divisible_by_two(mut n: usize) -> usize {
    let mut count = 0;
    while n % 2 == 0 && n != 0 {
        n >>= 1;
        count += 1;
    }
    count
}

fn main() {
    input! {
        n: usize,
        nums: [usize; n],
    }

    let num_list_or = nums.iter().fold(0, |acc, &x| acc | x);
    let count = count_divisible_by_two(num_list_or);
    println!("{}", count);
}
