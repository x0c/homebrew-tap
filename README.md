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

Open Corral from Applications and pair with your Corral host. For an existing official DMG installation, register it first with `brew install --cask --adopt x0c/tap/corral-mac`. Once registered, run `brew update` and `brew upgrade --cask x0c/tap/corral-mac` for updates. The built-in updater also remains available; current Homebrew can recognize a bundle newer than its installation record. An existing-App install error alone does not prove an updater conflict. Do not routinely use `--force`: it can replace a newer app with an older tap artifact. Pairing, settings and Keychain data are preserved. [Homebrew's self-updating-app rules](https://docs.brew.sh/FAQ#how-does-brew-upgrade-handle-apps-that-update-themselves).

The client Cask `corral-mac` and the host formula `corral` are separate packages. [Client setup](https://github.com/corral-dev/corral-apple#pair-with-your-host).

[简体中文](README.zh-CN.md)
