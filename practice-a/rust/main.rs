#!/usr/bin/env rust-script

//! ```cargo
//! [dependencies]
//! proconio = "0.4.5"
//! ```

use proconio::input;

fn main() {
    input! {
        a: i32,
        b: i32,
        c: i32,
        s: String,
    }

    println!("{} {}", a + b + c, s);
}
