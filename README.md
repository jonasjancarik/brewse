# Brewse

An interactive TUI (Terminal User Interface) browser for Homebrew packages. Brewse provides a fast, user-friendly way to search, view, and install or uninstall Homebrew packages.

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

### Option 1: Using Homebrew (recommended)

```bash
brew tap jonasjancarik/brewse
brew install brewse
```

Or install directly from the tap URL:

```bash
brew install jonasjancarik/brewse/brewse
```

### Option 2: Using uvx (run without installing)

Try brewse instantly without installation:

```bash
uvx brewse
```

**Note:** Requires [uv](https://docs.astral.sh/uv/) to be installed. You can install it with:

```bash
brew install uv
```

### Option 3: Using pip

```bash
pip install brewse
```

### Option 4: Using pipx (isolated environment)

```bash
pipx install brewse
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

## Development & Releases

### Release Process

Brewse uses automated releases with GitHub Actions:

1. **Update version** in `pyproject.toml` and `src/brewse/__init__.py`
2. **Build and publish to PyPI:**
   ```bash
   uv build
   uv publish
   ```
3. **Create a GitHub release:**
   ```bash
   gh release create v0.1.3 --generate-notes
   ```

The GitHub Action will automatically:
- Download the tarball from PyPI
- Calculate the SHA256 hash
- Update the Homebrew tap formula
- Push changes to the `homebrew-brewse` repository

See [.github/AUTOMATION_SETUP.md](.github/AUTOMATION_SETUP.md) for setup details.

### Manual Tap Update

If needed, you can manually update the Homebrew tap:

```bash
cd ~/homebrew-brewse
./update-formula.sh 0.1.3
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
