# Numerical Framework for Market Microstructure Modeling

A C-based software library with a Python interface for quantitative research in market microstructure. This library provides fast, memory-efficient implementations of over 50 essential functions and models for empirical market microstructure research and modeling.

## Motivation

Modern financial markets generate enormous volumes of order book data, especially at high frequencies where every change in the limit order book inserts, cancels and trades can be timestamped to the microsecond. A single trading day for a moderately active asset can produce tens of millions of events, creating massive challenges for researchers and traders attempting to analyze or model this data efficiently. Traditional scripting languages and numerical platforms (e.g., Python, R) often introduce performance bottlenecks when applied to this scale of data.

## Modules and Functions

### Statistical Testing

* `adf_test(double series[], int max_lag)`
* `hurst_test(double series[], int lags[])`
* `ks_test(double empirical[], double theoretical[], int size)`
* `cross_correlation_test(double asset1[], double asset2[], int max_lag)`
* `bootstrap_resample(double series[], int n_samples, int block_size)`

## Project Structure 

```

QFStat/
├── include/
│   └── qfstat.h             
├── src/
│   ├── core.c                 # Core computational logic
│   ├── parallel.c             # Parallelized routines
│   └── bindings.c           
├── build/
│   └── qfstat.so
├── python/
│   └── qfstat.py             # ctypes-based Python wrapper
├── tests/
│   ├── c_test.c              # C-level unit tests
│   └── test_qfstat.py        # Python-side test
├── Makefile
└── README.md

```


> For contributions, bug reports, or feature requests, open a GitHub issue or submit a pull request.
