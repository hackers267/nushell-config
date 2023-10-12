def "nu-complete nmcli networking" [] {
  ["on","off","help","connectivity"]
}
# 网络设备管理
export extern "nmcli device" []

export extern "nmcli agent" []

export extern "nmcli help" []

export extern "nmcli networking" [
  package:string@"nu-complete nmcli networking"
]

export extern "nmcli connection" []

export extern "nmcli general" []

export extern "nmcli monitor" []

export extern "nmcli radio" []