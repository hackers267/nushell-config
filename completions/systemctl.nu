def pattern [] {
  cd /usr/lib/systemd/system/
  ls | get name
}
# 启动服务
export extern "systemctl start" [
  service?: string@pattern
]
# 重启服务
export extern "systemctl restart" [
  service?: string@pattern
]
# 停止服务
export extern "systemctl stop" [
   service?: string@pattern
]
# 查看服务状态
export extern "systemctl status" [
   service?: string@pattern
]
# 设置服务开机启动
export extern "systemctl enable" [
   service?: string@pattern
]
# 取消服务开机启动
export extern "systemctl disable" [
   service?: string@pattern
]