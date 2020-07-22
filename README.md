# Nastran Benchmarks

```
> test.sh

## nastran-rs - Serial Parsing
Benchmark #1: calcmass shapes_500k_bulk.dat
  Time (mean ± σ):     933.5 ms ±  19.3 ms    [User: 847.6 ms, System: 84.9 ms]
  Range (min … max):   915.8 ms … 973.0 ms    10 runs

## nastran-rs - Parallel Parsing
Benchmark #1: calcmass shapes_500k_bulk.dat
  Time (mean ± σ):     449.5 ms ±   3.5 ms    [User: 1.867 s, System: 0.241 s]
  Range (min … max):   444.4 ms … 454.0 ms    10 runs

## pyNastran
Benchmark #1: python3 mass.py shapes_500k.dat
  Time (mean ± σ):     45.769 s ±  0.772 s    [User: 45.957 s, System: 1.060 s]
  Range (min … max):   44.662 s … 46.873 s    10 runs

```
