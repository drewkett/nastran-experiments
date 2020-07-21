cargo install --root . hyperfine

cargo install --root . --git https://github.com/drewkett/nastran-rs --branch mass nastran --bin calcmass

.\bin\hyperfine --warmup 1 ".\bin\calcmass shapes_500k_bulk.dat"

REM pip3 install pynastran

REM perfine --warmup 1 "python3 mass.py shapes_500k.dat"
