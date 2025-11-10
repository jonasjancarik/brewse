# Brewse

An interactive TUI (Terminal User Interface) browser for Homebrew packages. Brewse provides a fast, user-friendly way to search, view, and install or uninstall Homebrew packages.

## Quick Start

Try it instantly without installing:

```bash
uvx brewse
```

Or search directly:

```bash
uvx brewse python
```

## Features

- Interactive search interface for both Formulae and Casks
- Detailed package information including:
  - Version
  - Description
  - Homepage
  - Installation status
  - Installation analytics (30/90/365 days)
- Quick installation/uninstallation of packages
- Keyboard-driven navigation
- Local caching of package data for faster subsequent searches
- Real-time download progress indicator with visual progress bar

## Installation

### Option 1: Using pip (recommended for permanent installation)

```bash
pip install brewse
```

### Option 2: Using pipx (isolated environment)

```bash
pipx install brewse
```

### Option 3: Using uvx (run without installing)

```bash
uvx brewse
```

### Option 4: Using Homebrew (custom tap)

```bash
brew tap jonasjancarik/brewse
brew install brewse
```

Or install directly from the tap URL:

```bash
brew install jonasjancarik/brewse/brewse
```

## Usage

Launch Brewse in one of two ways:

1. Interactive search mode:
```bash
brewse
```

2. Direct search mode:
```bash
brewse <search-term>
```

### Command-line Options

```bash
brewse --help            # Show all available options
brewse --version         # Show version number
brewse --refresh         # Force refresh of cached package data
brewse --clear-cache     # Clear all cached data and exit
```

## Requirements

- Python 3.7+
- Homebrew
- Internet connection

## Cache

Brewse caches package data in `~/.cache/brewse/` to improve performance. Cache entries expire after 24 hours.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
