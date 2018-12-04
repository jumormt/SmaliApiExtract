# 检测流程
1. 首先使用apktool 将源apk 程序进行反编译，得到apk 的smali 文件，通过程序提取出smali 文件的method、class、apicall 等信息，这些信息可以用作机器学习的特征，也可以用于传统的模式匹配方法。
2. 使用 qark （https://github.com/linkedin/qark ）工具 对待分析 apk 进行 漏 洞自动化 分析此工具旨在查找源代码或打包的 APK 中的 几个与安全相关中的 几个与安全相关Android 应用程 序漏洞。该工具还能够创建 “概念验证 ”可部署的 APK 和/或 ADB 命令，能够利 命令，能够利 用它发现的许多漏洞。无需根测试设备，因为此工具专注于可在其他安全条件下 用它发现的许多漏洞。无需根测试设备，因为此工具专注于可在其他安全条件下 用它发现的许多漏洞。无需根测试设备，因为此工具专注于可在其他安全条件下利用的漏洞。
3. 使用 jeb 分析源程序，JEB 是我们的逆向工程平台，可以手动或作为分析管道一部执行代码和 文档件的反汇编，译调试和分析。

![](https://github.com/jumormt/SmaliApiExtract/blob/master/QQ20181204-102141.png)

详细报告参见 [apk敏感api检测报告.pdf](https://github.com/jumormt/SmaliApiExtract/blob/master/%5B%E8%BD%AF%E4%BB%B6%E5%AE%89%E5%85%A8%E4%BD%9C%E4%B8%9A%5D.pdf)
