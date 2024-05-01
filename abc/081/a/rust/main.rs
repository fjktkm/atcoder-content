#!/usr/bin/env rust-script

//! ```cargo
//! [dependencies]
//! proconio = "0.4.5"
//! ```

use proconio::input;

fn main() {
    input! { placement: String }
    let count = placement.chars().filter(|&c| c == '1').count();
    println!("{}", count);
}
