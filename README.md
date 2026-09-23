# VheissuLabs Homebrew tap

## tql

```sh
brew install vheissulabs/tap/tql
```

That installs [tql](https://github.com/VheissuLabs/tql), a database client for the terminal, as a
single binary with its own PHP built in, so it needs nothing else on the machine. macOS and Linux,
Apple Silicon, Intel and ARM. `brew upgrade tql` moves to a new release and `brew uninstall tql`
removes it; your saved connections stay in `~/.config/tql/`.

The formula is written by tql's release workflow, `.github/workflows/release.yml`, when a release is
tagged.

## GitDifferent

```sh
brew install --cask vheissulabs/tap/gitdifferent
```

That installs [GitDifferent](https://vheissulabs.com/projects/gitdifferent) into `/Applications`.
The app updates itself from then on, so `brew upgrade` leaves it alone; `brew uninstall --cask
gitdifferent` removes the app and keeps your licence, and `brew uninstall --zap` removes that too.

The cask is written by GitDifferent's release script, `scripts/publish.mjs`, when a release is
published. Apple Silicon only, like the app.
