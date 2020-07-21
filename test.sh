#!/bin/sh


cargo install --root . hyperfine

PATH=./bin:$PATH

cargo install --root . --git https://github.com/drewkett/nastran-rs --branch serial-parser nastran --bin calcmass

hyperfine --warmup 1 "calcmass shapes_500k_bulk.dat"

cargo install --root . --git https://github.com/drewkett/nastran-rs --branch parallel-parser nastran --bin calcmass

hyperfine --warmup 1 "calcmass shapes_500k_bulk.dat"

python3 -m venv venv

PATH=./venv/bin:$PATH

pip install pynastran

hyperfine --warmup 1 "python mass.py shapes_500k.dat"
