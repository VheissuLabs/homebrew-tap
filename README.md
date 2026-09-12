# VheissuLabs Homebrew tap

```sh
brew install --cask vheissulabs/tap/gitdifferent
```

That installs [GitDifferent](https://vheissulabs.com/projects/gitdifferent) into `/Applications`.
The app updates itself from then on, so `brew upgrade` leaves it alone; `brew uninstall --cask
gitdifferent` removes the app and keeps your licence, and `brew uninstall --zap` removes that too.

The cask is written by GitDifferent's release script, `scripts/publish.mjs`, when a release is
published. Apple Silicon only, like the app.
