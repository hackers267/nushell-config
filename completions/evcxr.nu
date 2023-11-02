def "edit_mode" [] {
   ["emacs", "vi"]
}

def "opt" [] {
   [0, 1, 2]
}
# A REPL for Rust
export extern "main" [
   --disable-readline
   # 禁用行模式
   --ide-mode
   # 使用ide模式启动
   --opt: string@"opt"
   # 优代级别
   --edit-mode: string@"edit_mode"
   # 编辑器模式  [默认: emacs]
   --help(-h)                   
   # 显示帮助
   --version(-V)                
   # 显示版本号
]
