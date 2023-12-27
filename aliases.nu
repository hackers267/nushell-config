export def "gitignore add" [name:string] {
  $name | save .gitignore --append
}

# 使用fzf获取文件本身路径
export def "fz" [ name: string ] {
  let str = f $name;
  $'~/($str)' 
}

def "f" [ name: string ] {
  fzf -q $name --preview 'bat --color=always {}' --preview-window '~3'
}

# 使用fzf获取文件目录路径
export def  "fdir" [ name: string ] {
  let str = f $name;
  $str | path dirname
}
