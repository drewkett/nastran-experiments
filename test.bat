cargo install --root . hyperfine

cargo install --root . --git https://github.com/drewkett/nastran-rs --branch master nastran --bin calcmass

.\bin\hyperfine --warmup 1 ".\bin\calcmass shapes_500k_bulk.dat"

python -m venv venv
venv\scripts\pip install pynastran

.\bin\hyperfine --warmup 1 ".\venv\scripts\python mass.py shapes_500k.dat"
