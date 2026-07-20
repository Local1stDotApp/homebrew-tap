# Privli Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [Privli](https://local1st.app) — privacy-focused nearby file & clipboard sharing, compatible with Android Quick Share.

## Install

```bash
brew install --cask local1stdotapp/tap/privli
```

## Upgrade

```bash
brew update && brew upgrade --cask privli
```

## Uninstall

```bash
brew uninstall --cask privli        # keep app data
brew uninstall --zap --cask privli  # also remove app data
```

The DMG is Developer ID-signed and notarized by Apple. The cask in `Casks/privli.rb` is updated automatically by Privli's release CI on every versioned release; download assets live in [Local1stDotApp/paste_share_open_source](https://github.com/Local1stDotApp/paste_share_open_source/releases).
