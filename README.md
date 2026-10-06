# Homebrew Tap for `share`

Official [Homebrew](https://brew.sh) tap for [**`share`**](https://github.com/rootagi/share) — a fast, zero-configuration terminal LAN file server with live sync, mobile QR codes, and a modern browser UI.

## Installation

Install directly in a single command:

```bash
brew install rootagi/tap/share
```

Or add the tap first and then install:

```bash
brew tap rootagi/tap
brew install share
```

### Supported Platforms

Prebuilt binaries and shell completions (`bash`, `zsh`, `fish`) are automatically installed for:

| OS | Architecture | Target |
| :--- | :--- | :--- |
| **macOS** | Apple Silicon (`arm64`) | `aarch64-apple-darwin` |
| **macOS** | Intel (`x86_64`) | `x86_64-apple-darwin` |
| **Linux** | x86_64 (`amd64`) | `x86_64-unknown-linux-gnu` |
| **Linux** | ARM64 (`aarch64`) | `aarch64-unknown-linux-gnu` |

## Upgrading

```bash
brew update
brew upgrade share
```

## Uninstalling

```bash
brew uninstall share
brew untap rootagi/tap
```

## Quick Start

```bash
# Share the current directory on the local network (default port 8080)
share

# Share a specific directory or file with a terminal QR code
share ~/Downloads --qr

# Share with an interactive TUI dashboard and allow uploads
share ./project --tui --upload

# Require a 6-digit PIN or Basic Auth
share --pin
share --auth admin:secret
```

For full documentation, CLI flags, and security guidance, visit the main repository: **[github.com/rootagi/share](https://github.com/rootagi/share)**.

## License

Dual-licensed under either of:

- **Apache License, Version 2.0** ([`LICENSE-APACHE`](LICENSE-APACHE) or <http://www.apache.org/licenses/LICENSE-2.0>)
- **MIT License** ([`LICENSE-MIT`](LICENSE-MIT) or <http://opensource.org/licenses/MIT>)

at your option.
