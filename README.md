# homebrew-rererepo

Homebrew tap for [rererepo 🧹](https://rererepo.com/) — a free macOS desktop app that audits and tidies up your GitHub repositories.

```sh
brew install --cask lightsound/rererepo/rererepo
```

or

```sh
brew tap lightsound/rererepo
brew install --cask rererepo
```

## Notes

- **Requirements**: macOS 14 (Sonoma) or later, Apple Silicon.
- The cask installs the latest build from the fixed-name DMG on `dl.rererepo.com` (`version :latest`). Once installed, the app checks for updates itself and applies them only after signature verification (Ed25519 manifest + Apple notarization), so `brew upgrade` skips it unless you pass `--greedy`. To reinstall the current build: `brew reinstall --cask rererepo`.
- While rererepo ships on the canary channel (0.x), the bundle is named `rererepo-canary.app`.
- `brew uninstall --zap --cask rererepo` also removes `~/.config/rererepo` (settings and the disposable cache). The GitHub token stays in the macOS Keychain — sign out in the app first if you want it gone.

## Free, as is, best effort

rererepo is free and provided **as is, without warranty**; support is best effort with **no SLA**. See the [Terms of Use](https://rererepo.com/eula.html) and [Privacy Policy](https://rererepo.com/privacy.html). The app is not open source (it bundles commercially licensed UI components) — bug reports and requests go to [lightsound/rererepo-community](https://github.com/lightsound/rererepo-community).

## 日本語

[rererepo 🧹](https://rererepo.com/)（無料の macOS アプリ。GitHub リポジトリの棚卸し＆整理）の Homebrew tap です。上のコマンドでインストールできます。動作要件は macOS 14 以降・Apple Silicon。アプリは自身で更新を検知・検証・適用するため `brew upgrade` は既定でこの cask をスキップします。無料・現状有姿・ベストエフォート・SLA なしでの提供です（[利用規約](https://rererepo.com/eula.html) / [プライバシーポリシー](https://rererepo.com/privacy.html)）。不具合報告・要望は [lightsound/rererepo-community](https://github.com/lightsound/rererepo-community) へ。
