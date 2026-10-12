# x0c/homebrew-tap

Homebrew tap for [subswap](https://github.com/x0c/subswap), [corral](https://github.com/corral-dev/corral), and [standup-reminder](https://github.com/x0c/standup-reminder).

```bash
brew install x0c/tap/subswap
brew install x0c/tap/corral
brew install x0c/tap/standup-reminder
```

Or tap first:

```bash
brew tap x0c/tap
brew install subswap
brew install x0c/tap/corral
brew install standup-reminder
```

Use the fully-qualified `x0c/tap/corral` formula. Do **not** run `brew install corral` — homebrew-core already has an unrelated Pony-language package with that name.

The old `pickup` formula is deprecated and remains only so `brew upgrade pickup` still pulls Corral.

After installing `standup-reminder`, start it as a background service (launchd):

```bash
brew services start standup-reminder
```

## Corral for Mac

Install the signed native client (macOS 26+):

```bash
brew install --cask x0c/tap/corral-mac
```

Open Corral from Applications and pair with your Corral host. Update with `brew update` and `brew upgrade --cask x0c/tap/corral-mac`. For an existing official DMG installation, add `--adopt` to register it without replacing the app. To replace it with the tap version, quit Corral and use `--force` instead, after checking that the tap version is not older. Pairing, settings and Keychain data are preserved. Application updates also remain available.

The client Cask `corral-mac` and the host formula `corral` are separate packages. [Client setup](https://github.com/corral-dev/corral-apple#pair-with-your-host).

[简体中文](README.zh-CN.md)
