# LNB Homebrew Cask

This repository contains the Homebrew Cask for [LNB](https://github.com/muthuishere/lnb) - a cross-platform utility that makes command-line tools accessible from anywhere.

## Installation

```bash
# Add the tap
brew tap muthuishere/lnb https://github.com/muthuishere/homebrew-lnb

# Install LNB  
brew install --cask lnb
```

## Usage

After installation, the `lnb` command will be available globally:

```bash
lnb help
lnb install ./mybinary
lnb list
```

## About

This cask is automatically maintained by the LNB release process. The cask file (`Casks/lnb.rb`) is updated automatically when new versions of LNB are released.

## Links

- **Main Project**: https://github.com/muthuishere/lnb
- **Documentation**: https://github.com/muthuishere/lnb#readme
- **Issues**: https://github.com/muthuishere/lnb/issues
