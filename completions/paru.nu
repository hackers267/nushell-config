def "nu-complete local packages" [] {
^paru -Qi | lines | split column ":" name content | where name =~ '名字' | select content | each { |line| $line | str trim | get content }
}

def "nu-complete all packages" [] {
^paru -Pc | lines | split column ' ' pack lib | get pack | uniq
}

# 同步源并更新系统
export extern "main" [
]

# 查看本地包的信息
export extern "paru -Qi" [
  package?: string@"nu-complete local packages", 
] 

## paru -S 系列

# 从本地数据中得到指定包的信息，下载安装指定包
export extern "paru -S" [
  package?: string@"nu-complete all packages",
  # 仅在必要的时候安装包
  --need
]

# 搜索指定包
export extern "paru -Ss" [
  package?: string@"nu-complete all packages"
]

# 仅同步源
export extern "paru -Sy" []

# 升级系统内容
export extern "paru -Su" [
  # 升级时忽略指定的包
  --ignore: string@"nu-complete all packages"
]

# 从缓存中移除旧包
export extern "paru -Sc" []

# 查询指定包的信息
export extern "paru -Si" [
  package?: string@"nu-complete all packages",
]

## paru -R 系列

# 从系统中卸载指定的包
export extern "paru -R" [
  package?: string@"nu-complete local packages"
]

# 卸载并删除依赖
export extern "paru -Rnsc" [
  package?: string@"nu-complete local packages"
]

# 卸载依赖
export extern "paru -Rc" [
  package?: string@"nu-complete local packages"
]
# 卸载并删除依赖
export extern "paru -Rcns" [
  package?: string@"nu-complete local packages"
]
