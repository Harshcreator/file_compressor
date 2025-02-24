### File Compressor

A simple command-line file compression utility built with Rust.

## Installation

Ensure you have Rust and Cargo installed on your system. Then:

```bash
git clone https://github.com/Harshcreator/file_compressor.git
cd file_compressor
cargo build --release
```

## Usage

```bash
./target/release/file_compressor <input_file> <output_file>
```

## Parameters

- `input_file`: The file to compress.
- `output_file`: The compressed output file.

## Example

```bash
./target/release/file_compressor input.txt output.txt
```

## Features

- Fast GZIP compression using the flate2 crate
- Progress feedback including:
- Original file size
- Compressed file size
- Compression duration

## Output Example

```bash
Source len: 1000000
Target len: 450000
Elapsed: 124.53ms
```

## Dependencies

- `flate2:` For GZIP compression
- Rust standard library components:
    - `std::env::args:` Command-line argument parsing
    - `std::fs::File:` File I/O operations
    - `std::io::copy:` Streaming data copying
    - `std::time::Instant:` Performance measurement