export def "gitignore add" [name:string] {
  $name | save .gitignore --append
}
