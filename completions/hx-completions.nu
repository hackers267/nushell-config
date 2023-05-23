export extern "hx" [
--help(-h)
#Prints help information

--tutor
#Loads the tutorial

--health
#Checks for potential errors in editor setup CATEGORY can be a language or one of 'clipboard', 'languages' or 'all'. 'all' is the default if not specified.

--grammar(-h)
#Fetches or builds tree-sitter grammars listed in languages.toml

--config(-c)
#Specifies a file to use for configuration

-v
#Increases logging verbosity each use for up to 3 times

--log
#Specifies a file to use for logging (default file: /home/silence/.cache/helix/helix.log)

--version(-V)
#Prints version information

--vsplit
#Splits all given files vertically into different windows

--hsplit
#Splits all given files horizontally into different windows
]
export extern "helix" [
--help(-h)
#Prints help information

--tutor
#Loads the tutorial

--health
#Checks for potential errors in editor setup CATEGORY can be a language or one of 'clipboard', 'languages' or 'all'. 'all' is the default if not specified.

--grammar(-h)
#Fetches or builds tree-sitter grammars listed in languages.toml

--config(-c)
#Specifies a file to use for configuration

-v
#Increases logging verbosity each use for up to 3 times

--log
#Specifies a file to use for logging (default file: /home/silence/.cache/helix/helix.log)

--version(-V)
#Prints version information

--vsplit
#Splits all given files vertically into different windows

--hsplit
#Splits all given files horizontally into different windows
]
