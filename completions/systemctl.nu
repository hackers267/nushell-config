def pattern [] {
  cd /usr/lib/systemd/system/
  ls | get name
}

def active_pattern_service [] {
  systemctl list-units --type=service | detect columns | get UNIT | take until {|x| $x =~ "LOAD" }
}

# 列出Unit
export extern "systemctl list-units" [
  --type
  # Unit类型
  --state
  # 状态
]

# 启动服务
export extern "systemctl start" [
  service?: string@pattern
]
# 重启服务
export extern "systemctl restart" [
  service?: string@active_pattern_service
]
# 停止服务
export extern "systemctl stop" [
   service?: string@active_pattern_service
]
# 查看服务状态
export extern "systemctl status" [
   service?: string@active_pattern_service
]
# 设置服务开机启动
export extern "systemctl enable" [
  # 设置为开机启动并立即启动
   --now
   service?: string@pattern
]
# 取消服务开机启动
export extern "systemctl disable" [
  # 取消开机启动并立即停用
  --now
   service?: string@pattern
]