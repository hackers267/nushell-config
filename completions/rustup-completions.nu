def "nu-completions rustup shells" [] {
    ["bash", "fish", "zsh", "elvish", "powershell"]
}

def "nu-completions rustup completions commands" [] {
    ["cargo", "rustup"]
} 

def "nu-completions rustup toolchains" [] {
    ["stable", "nightly"]
}

# Check for updates to Rust toolchains and rustup
export extern "rustup check" []

# Generate tab-completions scripts for your shell
export extern "rustup completions" [
  shell?: string@"nu-completions rustup shells"
  command?: string@"nu-completions rustup completions commands"
]

# Modify a toolchain's installed components
export extern "rustup component" []

# Set the default toolchain
export extern "rustup default" []

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
export extern "rustup install" []

# Update Rust toolchains and rustup
export extern "rustup update" []

# Modify or query the installed toolchains
export extern "rustup toolchain" []

# Uninstall Rust toolchains
export extern "rustup uninstall" []

# Display which binary will be run for a given command
export extern "rustup which" []

# Modify or query the installed toolchains
export extern "rustup target" []

# Show the active and installed toolchains or profiles
export extern "rustup show" []

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

