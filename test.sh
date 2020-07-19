#!/bin/sh

cargo install hyperfine

cargo install --git https://github.com/drewkett/nastran-rs --branch mass nastran --bin calcmass

~/.cargo/bin/hyperfine --warmup 1 "~/.cargo/bin/calcmass shapes_500k_bulk.dat"

pip3 install pynastran

~/.cargo/bin/hyperfine --warmup 1 "python3 mass.py shapes_500k.dat"
