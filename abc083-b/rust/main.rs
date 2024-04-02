#!/usr/bin/env rust-script

//! ```cargo
//! [dependencies]
//! proconio = "0.4.5"
//! ```

use proconio::input;

fn main() {
    input! {
        range_max: i32,
        digit_sum_min: i32,
        digit_sum_max: i32
    }

    let sum = (1..=range_max)
        .filter(|&x| {
            let sum = x.to_string().chars().map(|c| c.to_digit(10).unwrap()).sum::<u32>() as i32;
            digit_sum_min <= sum && sum <= digit_sum_max
        })
        .sum::<i32>();

    println!("{}", sum);
}
