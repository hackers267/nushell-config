# Determine type of FILEs.
export extern "main" [
--help                     #显示此帮助
--version(-v)              # 显示版本信息
--uncompress(-z)           # 尝试查看压缩包的内容
--uncompress-noreport(-Z)  # 仅仅输出压缩包文件的内容
--brief(-b)                # 在输出的内容中不显示文件名
--separator(-F):string     # 使用字符串而不是`:`作为分隔符
--mime(-i)                 # 显示MIME类型和编码
--extension                # 显示扩展名
--mime-type                # 显示MIME类型
--mime-encoding            # 显示MIME编码
]
