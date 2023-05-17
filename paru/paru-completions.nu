def "nu-complete local packages" [] {
^paru -Qi | lines | split column ":" name content | where name =~ '名字' | select content | each { |line| $line | str trim | get content }
}

def "nu-complete all packages" [] {
^paru -Sl | lines | split column cate name version | get name | uniq
}
# View package infomation
export extern "paru -Qi" [
  package?: string@"nu-complete local packages", 
] 

# Synchronize packages
export extern "paru -S" [
  package?: string@"nu-complete all packages",
]

# Remove old packages from cache
export extern "paru -Sc" []

# View package infomation
export extern "paru -Si" [

]

# Remove a package from the system
export extern "paru -R" [
  package?: string@"nu-complete local packages"
]

# Remove all dependent packages
export extern "paru -Rc" [
  package?: string@"nu-complete local packages"
]
