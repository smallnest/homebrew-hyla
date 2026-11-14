# Hyla's Homebrew tap

```sh
brew install --cask smallnest/hyla/hyla
```

or, to use the short name afterwards:

```sh
brew tap smallnest/hyla
brew install --cask hyla
```

The cask installs the signed-but-not-notarized **Hyla.app**; the first launch
is **Right click › Open**, or `xattr -d com.apple.quarantine /Applications/Hyla.app`.

The tap is updated by `scripts/update-cask.sh` in
[smallnest/hyla](https://github.com/smallnest/hyla) after each release.
