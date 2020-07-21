#!/bin/sh


cargo install --root . hyperfine

PATH=./bin:$PATH

cargo install --root . --git https://github.com/drewkett/nastran-rs --branch master nastran --bin calcmass

hyperfine --warmup 1 "calcmass shapes_500k_bulk.dat"

python3 -m venv venv
./venv/scripts/pip install pynastran

hyperfine --warmup 1 "./venv/scripts/python mass.py shapes_500k.dat"
