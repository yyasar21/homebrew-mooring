# homebrew-mooring

Homebrew tap for [Mooring](https://github.com/yyasar21/Mooring), the security-first remote
access manager for macOS, Windows and Linux.

```sh
brew install --cask yyasar21/mooring/mooring
```

`Casks/mooring.rb` is rendered and pushed by the
[release-homebrew](https://github.com/yyasar21/Mooring/blob/main/.github/workflows/release-homebrew.yml)
workflow on every published stable release; the hashes come from the release's cosign-verified
`SHA256SUMS`. Do not edit the cask by hand — change the template in
`packaging/homebrew/Casks/mooring.rb` in the main repository.

The installers are not notarized yet: macOS shows the Gatekeeper warning once (right-click →
Open). Verify a download with `scripts/release/verify-release.sh` from the main repository.

License: MIT.
