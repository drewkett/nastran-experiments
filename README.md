# Nastran Benchmarks

```
> test.sh

## nastran-rs - Serial Parsing
Benchmark #1: calcmass shapes_500k_bulk.dat
  Time (mean ± σ):     973.9 ms ±   2.7 ms    [User: 886.0 ms, System: 87.6 ms]
  Range (min … max):   970.3 ms … 978.6 ms    10 runs  

## nastran-rs - Parallel Parsing
Benchmark #1: calcmass shapes_500k_bulk.dat
  Time (mean ± σ):     577.4 ms ±  19.6 ms    [User: 1.803 s, System: 0.196 s]
  Range (min … max):   559.7 ms … 612.7 ms    10 runs
 
## pyNastran
Benchmark #1: python3 mass.py shapes_500k.dat
  Time (mean ± σ):     45.769 s ±  0.772 s    [User: 45.957 s, System: 1.060 s]
  Range (min … max):   44.662 s … 46.873 s    10 runs

```
