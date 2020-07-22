cargo install -q --root . hyperfine

cargo install -q --root serial --git https://github.com/drewkett/nastran-rs --no-default-features nastran --bin calcmass

.\bin\hyperfine --warmup 1 ".\serial\bin\calcmass shapes_500k_bulk.dat"

cargo install -q --root parallel --git https://github.com/drewkett/nastran-rs --features parallel nastran --bin calcmass

.\bin\hyperfine --warmup 1 ".\parallel\bin\calcmass shapes_500k_bulk.dat"

python -m venv venv

venv\scripts\pip install -q pynastran

.\bin\hyperfine --warmup 1 -m 3 ".\venv\scripts\python mass.py shapes_500k.dat"
