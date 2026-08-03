# x0c/homebrew-tap

Homebrew tap for [subswap](https://github.com/x0c/subswap), [session-continue](https://github.com/x0c/session-continue), and [standup-reminder](https://github.com/x0c/standup-reminder).

```bash
brew install x0c/tap/subswap
brew install x0c/tap/session-continue
brew install x0c/tap/standup-reminder
```

Or tap first:

```bash
brew tap x0c/tap
brew install subswap
brew install session-continue
brew install standup-reminder
```

After installing `standup-reminder`, start it as a background service (launchd):

```bash
brew services start standup-reminder
```
