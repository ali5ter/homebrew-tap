# homebrew-tap

Homebrew tap for [ali5ter](https://github.com/ali5ter)'s tools.

## Usage

```bash
brew tap ali5ter/tap
```

Then install any available formula or cask:

```bash
brew install claude-local          # Formula
brew install --cask openwebui-electron   # Cask
```

Or install directly without a separate tap step:

```bash
brew install ali5ter/tap/claude-local
brew install ali5ter/tap/openwebui-electron
```

## Formulas

| Formula | Description | Source |
| ------- | ----------- | ------ |
| [claude-local](Formula/claude-local.rb) | Start Claude Code on a local Ollama model, with nothing written to disk | [ali5ter/claude-local](https://github.com/ali5ter/claude-local) |
| [clu](Formula/clu.rb) | Terminal interface for the commandlineuser.com CLI catalogue | [ali5ter/clu](https://github.com/ali5ter/clu) |
| [pfb](Formula/pfb.rb) | Pretty feedback for Bash scripts | [ali5ter/pfb](https://github.com/ali5ter/pfb) |
| [unspool](Formula/unspool.rb) | Subscription-first, Shorts-free YouTube TUI | [ali5ter/unspool](https://github.com/ali5ter/unspool) |
| [wwlog](Formula/wwlog.rb) | Browse and export your Weight Watchers food log from the terminal | [ali5ter/wwlog](https://github.com/ali5ter/wwlog) |

## Casks

| Cask | Description | Source |
| ---- | ----------- | ------ |
| [openwebui-electron](Casks/openwebui-electron.rb) | Desktop app for local OpenWebUI instances | [ali5ter/openwebui-electron](https://github.com/ali5ter/openwebui-electron) |

## License

MIT © [Alister Lewis-Bowen](https://github.com/ali5ter)
