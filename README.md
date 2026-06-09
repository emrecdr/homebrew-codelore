# emrecdr/homebrew-codelore

Homebrew tap for [codelore](https://github.com/emrecdr/codelore) — a Rust-native behavioral code analysis CLI.

## Install

```bash
brew install emrecdr/codelore/codelore
```

Or in two steps:

```bash
brew tap emrecdr/codelore
brew install codelore
```

## What's in the tap

- `Formula/codelore.rb` — the codelore CLI, prebuilt binaries for macOS (aarch64, x86_64) and Linux (aarch64, x86_64).

## How it's updated

Each `v*` tag pushed to [emrecdr/codelore](https://github.com/emrecdr/codelore) triggers a `homebrew-publish` job in that repo's release workflow, which:
1. Downloads the cargo-built release archives,
2. Computes SHA256s of each,
3. Renders `Formula/codelore.rb` from a template,
4. Commits and pushes the regenerated formula here via a deploy key.

This tap doesn't accept manual PRs — the formula is fully generated.

## License

The formula file is GPL-3.0-only (matching codelore). The codelore binary it installs is GPL-3.0-only (`crates/codelore-lib`, `crates/codelore-cli`) plus MPL-2.0 (vendored `crates/codelore-rca`, derived from Mozilla rust-code-analysis).
