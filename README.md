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

Each release updates this tap on its own: the release workflow in
[smallnest/hyla](https://github.com/smallnest/hyla) runs
`scripts/update-cask.sh`, which reads the new dmgs' sha256 and commits them
here.
