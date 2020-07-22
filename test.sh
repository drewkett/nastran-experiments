#!/bin/sh


cargo install --root . hyperfine

PATH=./bin:$PATH

cargo install --root serial --git https://github.com/drewkett/nastran-rs --no-default-features nastran --bin calcmass

hyperfine --warmup 1 "./serial/bin/calcmass shapes_500k_bulk.dat"

cargo install --root parallel --git https://github.com/drewkett/nastran-rs --features parallel nastran --bin calcmass

hyperfine --warmup 1 "./parallel/bin/calcmass shapes_500k_bulk.dat"

python3 -m venv venv

PATH=./venv/bin:$PATH

pip install pynastran

hyperfine --warmup 1 "python mass.py shapes_500k.dat"
