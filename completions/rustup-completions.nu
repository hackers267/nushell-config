def "nu-completions rustup shells" [] {
    ["bash", "fish", "zsh", "elvish", "powershell"]
}

def "nu-completions rustup completions commands" [] {
    ["cargo", "rustup"]
} 

# Todo: add the completions of toolchains: all and installed
def "nu-completions rustup toolchains" [] {
   ["stable", "nightly"]
}

def "nu-completions rustup profiles" [] {
    ["minimal", "default", "complete"]
  }

# Check for updates to Rust toolchains and rustup
export extern "rustup check" []

# Generate tab-completions scripts for your shell
export extern "rustup completions" [
  shell?: string@"nu-completions rustup shells"
  command?: string@"nu-completions rustup completions commands"
]

# List installed and available components
export extern "rustup component list" [
  --toolchain:string@"nu-completions rustup toolchains"
  # toolchain name
  --installed
  # List only installed components
  --help(-h)
  # Print help information
]

# Add a component to a Rust toolchain
export extern "rustup component add" [
  --toolchain:string@"nu-completions rustup toolchains"
  # toolchain name
  --target
  --help(-h)
  # Print help information
]

# Remove a component from a Rust toolchain
export extern "rustup component remove" [
  --toolchain:string@"nu-completions rustup toolchains"
  # toolchain name
  --target
  --help(-h)
  # Print help information
]

# Print this message or the help of the given subcommand(s)
export extern "rustup component help" []

# Set the default toolchain
export extern "rustup default" [
  --toolchain:string@"nu-completions rustup toolchains"
  # toolchain name
  --help(-h)
  # Print help information
]

# Open the documentation for the current toolchain
export extern "rustup doc" [
  --path
  # Only print the path to the documentation
  --toolchain: string@"nu-completions rustup toolchains"
  # toolchain name, such as 'stable', 'nightly', or '1.8.0'.
  --alloc
  # The Rust core allocation and collections library
  --book
  # The Rust Programming Language book
  --cargo
  # The Cargo Book
  --core
  # The Rust core Library
  --edition-guide
  # The Rust Edition Guide
  --nomicon
  # The Dark Arts of Advanced and Unsafe Rust Programming
  --proc_macro
  # A support library for macro authors when defining new macros
  --reference
  # The Rust Reference
  --rust-by-example
  # A collection of runnable examples that illustrate various Rust concepts and standard libraries
  --rustc
  # The compiler for the Rust programming language
  --rustdoc
  # Documenation for the Rust projects
  --std
  # Standard library API documentation
  --test
  # Support code for rust's built in unit-test and micro-benchmarking framework
  --unstable-book
  # The Unstable Book
  --embedded-book
  # The Embedded Rust Book
  --help(-h)
  # Print help information
]

# Dump information about the build
export extern "rustup dump-testament" []

# Print this message or the help of the given subcommand(s)
export extern "rustup help" []

# Update the Rust toolchains
export extern "rustup install" [
  --profile:string@"nu-completions rustup profiles"
  --no-self-update
  # Don't perform self update when running the`rustup toolchain install` command
  --force
  # Force an update, even if some components are missing
  --force-non-host
  # install toolchains that require an emulator. See https://github.com/rust-lang/rustup/wiki/Non-host-toolchains
]

# Update Rust toolchains and rustup
export extern "rustup update" [
  --no-self-update
  # Don't perform self update when running the`rustup toolchain install` command
  --force
  # Force an update, even if some components are missing
  --force-non-host
  # install toolchains that require an emulator. See https://github.com/rust-lang/rustup/wiki/Non-host-toolchains
]

# List installed toolchain
export extern "rustup toolchain list" [
  --verbose(-v)
  # Enable verbose output with toolchain information
  --help(-h)
  # Print help information
]

# install or undate a given toolchain
export extern "rustup toolchain install" [
  --profile:string@"nu-completions rustup profiles"
  --component(-c)
  # Add specific components on installation
  --target(-t)
  # Add specific targets on installation
  --no-self-update
  # Don't perform self update when running the`rustup toolchain install` command
  --force
  # Force an update, even if some components are missing
  --allow-downgrade
  # Allow rustup to downgrade the toolchain to satisfy your component choice
  --force-non-host
  # install toolchains that require an emulator. See https://github.com/rust-lang/rustup/wiki/Non-host-toolchains
]

# Uninstall a toolchain
export extern "rustup toolchain uninstall" []

# Create a custom toolchain by symlinking to a directory
export extern "rustup toolchain link" []

# Print this message or the help of the given subcommand(s)
export extern "rustup toolchain help" []

# Uninstall Rust toolchains
export extern "rustup uninstall" []

# Display which binary will be run for a given command
export extern "rustup which" [
  --toolchain:string@"nu-completions rustup toolchains"
  # toolchain name
]

# List installed and available targets
export extern "rustup target list" [
  --toolchain:string@"nu-completions rustup toolchains"
  # toolchain name
  --installed
  # List only installed targets
  --help(-h)
  # Print help information
]

# Add a target to a Rust toolchain
export extern "rustup target add" [
  --toolchain:string@"nu-completions rustup toolchains"
  # toolchain name
  --help(-h)
  # Print help information
]

# Remove a target from a Rust toolchain
export extern "rustup target remove" [
  --toolchain:string@"nu-completions rustup toolchains"
  # toolchain name
  --help(-h)
  # Print help information
]

# Show the active and installed toolchains or profiles
export extern "rustup show" [
  --verbose(-v)
  # Enable verbose output with rustc installation for all installed toolchains
]

# Todo: add rustup show subcommands

# Alter rustup settings
export extern "rustup set" []

# Mofify the rustup installation
export extern "rustup self" []

# Run a command with an environment configured for a given toolchain
export extern "rustup run" []

# Modify directory toolchain overrides
export extern "rustup override" []

# View the man page for a given command
export extern "rustup man" []

