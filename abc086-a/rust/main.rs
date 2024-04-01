#!/usr/bin/env rust-script

//! ```cargo
//! [dependencies]
//! proconio = "0.4.5"
//! ```

use proconio::input;

fn is_even(n: i32) -> bool {
    n % 2 == 0
}

fn main() {
    input! {
        a: i32,
        b: i32
    }

    let output = if is_even(a) || is_even(b) {
        "Even"
    } else {
        "Odd"
    };
    println!("{}", output);
}
