#!/usr/bin/env nu
def day [day: number = 0] {
  let diff = $"($day)day";
  let day = ^date -d $diff +"%x %A";
  $day | str trim -c '"'
}

def main [n: number = 0] {
  day $n
}
