# Setting Up the Homebrew Tap

This guide explains how to set up a custom Homebrew tap for brewse.

## 1. Create a new GitHub repository

Name it: **`homebrew-brewse`** (the `homebrew-` prefix is required)

URL will be: `https://github.com/jonasjancarik/homebrew-brewse`

## 2. Initialize the tap repository

```bash
# Create a new directory
mkdir homebrew-brewse
cd homebrew-brewse

# Initialize git
git init
git branch -M main

# Copy the Formula file
mkdir Formula
cp ../brewse/Formula/brewse.rb Formula/

# Create README
cat > README.md << 'EOF'
# Brewse Tap

Custom Homebrew tap for [brewse](https://github.com/jonasjancarik/brewse) - an interactive TUI browser for Homebrew packages.

## Installation

```bash
brew tap jonasjancarik/brewse
brew install brewse
```

Or install directly:

```bash
brew install jonasjancarik/brewse/brewse
```

## Updating

The formula is automatically synced with PyPI releases.
EOF

# Commit and push
git add .
git commit -m "Initial tap setup for brewse"
git remote add origin git@github.com:jonasjancarik/homebrew-brewse.git
git push -u origin main
```

## 3. Test the tap locally

```bash
# Tap your local repository
brew tap jonasjancarik/brewse

# Install brewse
brew install brewse

# Test it works
brewse --version
```

## 4. Update the formula for new releases

When you release a new version, use the automated update script:

```bash
cd homebrew-brewse

# Run the update script with the new version number
./update-formula.sh 0.1.3
```

The script will automatically:
- Download the tarball from PyPI
- Calculate the SHA256 hash
- Update Formula/brewse.rb
- Show you the diff
- Commit and push (with confirmation)

### Manual update (if needed)

If you prefer to update manually:

```bash
cd homebrew-brewse

# Get the new SHA256:
curl -sL https://files.pythonhosted.org/packages/source/b/brewse/brewse-X.Y.Z.tar.gz | shasum -a 256

# Update the formula
vim Formula/brewse.rb

# Commit and push
git add Formula/brewse.rb
git commit -m "Update brewse to vX.Y.Z"
git push
```

## 5. Users update with

```bash
brew update
brew upgrade brewse
```

## Alternative: Automatic updates

You could set up a GitHub Action to automatically update the formula when you publish to PyPI. Let me know if you want help with that!

