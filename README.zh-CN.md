# x0c/homebrew-tap

[subswap](https://github.com/x0c/subswap)、[corral](https://github.com/corral-dev/corral) 和 [standup-reminder](https://github.com/x0c/standup-reminder) 的 Homebrew tap。

```bash
brew install x0c/tap/subswap
brew install x0c/tap/corral
brew install x0c/tap/standup-reminder
```

也可先添加 tap：

```bash
brew tap x0c/tap
brew install subswap
brew install x0c/tap/corral
brew install standup-reminder
```

Corral 开发机 CLI 必须使用完整名称 `x0c/tap/corral`。不要运行 `brew install corral`：homebrew-core 中另有同名的 Pony 工具。

旧 `pickup` 配方已弃用，只保留为兼容入口，使 `brew upgrade pickup` 仍能更新 Corral。

安装 `standup-reminder` 后，可将其启动为 launchd 后台服务：

```bash
brew services start standup-reminder
```

## Corral Mac 客户端

安装已签名的原生客户端（macOS 26+）：

```bash
brew install --cask x0c/tap/corral-mac
```

从「应用程序」打开 Corral，与开发机配对。已有官方 DMG 安装先运行 `brew install --cask --adopt x0c/tap/corral-mac`，登记到 Homebrew。登记后运行 `brew update`，再运行 `brew upgrade --cask x0c/tap/corral-mac` 更新。内置更新仍然可用，当前 Homebrew 能识别比安装记录更新的应用。安装时报已有应用，不能单凭这一点判断两套更新方式冲突。不要把 `--force` 当作常规修复，它可能用 tap 的旧版本覆盖较新的应用。配对、设置和 Keychain 数据保留。详见 [Homebrew 对应用内更新的处理](https://docs.brew.sh/FAQ#how-does-brew-upgrade-handle-apps-that-update-themselves)。

客户端 Cask `corral-mac` 与开发机配方 `corral` 是两个独立软件包。[客户端配对指南](https://github.com/corral-dev/corral-apple/blob/main/README.zh-CN.md#与开发机配对)。

[English](README.md)
