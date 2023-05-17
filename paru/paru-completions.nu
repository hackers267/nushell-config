def "nu-complete paru -Qi" [] {
^paru -Qi | lines | split column ":" name content | where name =~ '名字' | select content | each { |line| $line | str trim | get content }
}

# View package infomation
export extern "paru -Qi" [
  package?: string@"nu-complete paru -Qi", 
]

# Synchronize packages
export extern "paru -S" [

]

# Remove old packages from cache
export extern "paru -Sc" []

# View package infomation
export extern "paru -Si" [

]

# Remove a package from the system
export extern "paru -R" []

# Remove all dependent packages
export extern "paru -Rc" []
