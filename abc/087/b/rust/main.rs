#!/usr/bin/env rust-script

//! ```cargo
//! [dependencies]
//! proconio = "0.4.5"
//! ```

use proconio::input;

fn main() {
    input! {
        coin500: i32,
        coin100: i32,
        coin50: i32,
        total: i32,
    }

    let mut count = 0;
    for i in 0..coin500 + 1 {
        for j in 0..coin100 + 1 {
            for k in 0..coin50 + 1 {
                if i * 500 + j * 100 + k * 50 == total {
                    count += 1;
                }
            }
        }
    }
    println!("{}", count);
}
