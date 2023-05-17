def editions [] { [2015, 2018, 2021] }
def colors [] { ["always", "never", "auto" ] }
def prints [] { ["default", "minimal", "current"] }

# Format Rust code
export extern "rustfmt" [
  --check # Run in 'check' mode
  --edition: string@editions # Rust edition to use
  --emit # What data to emit and how
  --backup # Backup any modified files.
  --config-path # Recursively searches the given path for the rustfmt.toml config file. If not found reverts to the input file path
  --color: string@colors # Use colored output (if supported)
  --print-config: string@prints
  # Dumps a default or minimal config to PATH. A minimal config is the subset of the current config file used for formatting the current program. `current` writes to stdout current config as if formatting the file at PATH
  --verbose(-v)
  # Print verbose output
  --quiet(-q)
  # Print less output
  --version(-V)
  # Show version information
  --help(-h)
  # show the help
  --files-with-diff(-l)
  # Prints the names of mismatched files that were formatted. Prints the names of files that wolud be formatted when used with `--check` mode.
  --config
  # Set options from command line.
]
