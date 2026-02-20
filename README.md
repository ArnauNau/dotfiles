# dotfiles

Personal dotfiles managed with `chezmoi`.

**Tracked:** Ghostty, Raycast, Homebrew (Brewfile), zsh (.zshrc, powerlevel10k), git config.

## Prerequisites

Install [Homebrew](https://brew.sh/) first, then install chezmoi:

```sh
brew install chezmoi
```

## Bootstrap (new machine)

1. Apply managed files:

```sh
chezmoi init --apply <your-repo-url>
```

2. Install Homebrew packages from this repo:

```sh
brew bundle --file="$HOME/.local/share/chezmoi/Brewfile"
```

## Refresh tracked machine state

- Update Homebrew bundle file:

```sh
brew bundle dump --force --file="$HOME/.local/share/chezmoi/Brewfile"
```

- Update Raycast preferences export:

```sh
"$HOME/.local/share/chezmoi/scripts/export-raycast.sh"
```

Then review and commit changes.
