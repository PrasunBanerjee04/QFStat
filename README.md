# Numerical Framework for Market Microstructure Modeling

A C-based software library with a Python interface for quantitative research in market microstructure. This library provides fast, memory-efficient implementations of over 50 essential functions and models for empirical market microstructure research and modeling.

## Motivation

Modern financial markets generate enormous volumes of order book data, especially at high frequencies where every change in the limit order book (LOB)—inserts, cancels, trades—can be timestamped to the microsecond. A single trading day for a moderately active asset can produce tens of millions of events, creating massive challenges for researchers and traders attempting to analyze or model this data efficiently. Traditional scripting languages and numerical platforms (e.g., Python, R) often introduce performance bottlenecks when applied to this scale of data.

## Modules and Functions

### Order Book and Market Event Metrics

* `compute_order_imbalance(double bid_sizes[], double ask_sizes[], int depth)`
* `compute_spread(double bid_price, double ask_price)`
* `compute_midprice(double bid_price, double ask_price)`
* `compute_wap(double bid_prices[], double ask_prices[], double bid_sizes[], double ask_sizes[], int depth)`
* `book_pressure_ratio(double bid_volume, double ask_volume)`
* `order_flow_imbalance(Event event_stream[], int interval)`
* `queue_position_estimator(int order_id, OrderBookSnapshot *snapshot)`
* `latency_adjusted_price(double prices[], int latency_ms)`
* `microprice(double bid_price, double ask_price, double bid_size, double ask_size)`
* `price_impact(char event_type, double price_change)`

### Event Classification & Labeling

* `detect_trade_direction(double bid, double ask, double price, int rule_type)`
* `classify_event_type(char message_code)`
* `label_informed_trade(double volume, double price_change, double threshold)`
* `identify_aggressive_order(Event stream[])`
* `filter_hidden_liquidity(Event events[], OrderBookSnapshot snapshots[])`

### High-Frequency Return Estimation

* `log_return(double price_t, double price_t_minus_1)`
* `realized_volatility(double log_returns[], int window)`
* `signature_plot(double log_returns[], int bins[])`
* `compute_variance_ratio(double prices[], int lag)`
* `estimate_microstructure_noise(double log_returns[])`

### Estimators and Models

* `hasbrouck_lambda_estimator(double prices[], double volumes[])`
* `roll_spread_estimator(double prices[])`
* `garman_klass_volatility(double high[], double low[], double close[], double open[])`
* `two_scale_realized_volatility(double log_returns[], int window1, int window2)`
* `estimate_epps_effect(double asset1[], double asset2[], int interval)`

### Liquidity Metrics

* `amihud_illiquidity(double returns[], double volume[])`
* `pastor_stambaugh_lambda(double prices[], double volumes[], double market_returns[])`
* `tightness_spread(double spread_series[])`
* `depth_slope_metric(double depth_levels[], double prices[], double sizes[])`
* `resilience_after_shock(OrderBookSnapshot snapshots[])`

### Simulation and Order Book Construction

* `simulate_lob(int levels, double lambda)`
* `construct_order_book(Event events[], int N_levels)`
* `apply_limit_order(OrderBook *book, double price, int size, char side)`
* `apply_market_order(OrderBook *book, int size, char side)`
* `match_orders(OrderBook *book)`

### Time-Series / Tick-Series Operations

* `resample_ticks(TickData ticks[], int interval)`
* `compute_autocorrelation(double series[], int lag)`
* `detect_price_jumps(double log_returns[], double threshold)`
* `estimate_hurst_exponent(double series[], int method)`
* `timestamp_alignment_correction(long timestamps[], int tolerance_ms)`

### Order Strategy Evaluation

* `execution_cost(double realized_price, double benchmark_price)`
* `slippage(double actual_price, double expected_price)`
* `arrival_price_impact(double price_before, double price_after)`
* `trade_efficiency_metric(double exec_times[], double spreads[])`
* `implementation_shortfall(double actual_costs[], double benchmark[])`

### Statistical Testing

* `adf_test(double series[], int max_lag)`
* `hurst_test(double series[], int lags[])`
* `ks_test(double empirical[], double theoretical[], int size)`
* `cross_correlation_test(double asset1[], double asset2[], int max_lag)`
* `bootstrap_resample(double series[], int n_samples, int block_size)`


> For contributions, bug reports, or feature requests, open a GitHub issue or submit a pull request.
