[Homebrew](https://brew.sh) tap for [tanker.io](https://tanker.io) software

# Usage

Run:

```
brew install TankerHQ/homebrew-repo/<name>
```

Where `<name>` is the name of the formula you want to install.

You can find the whole list in the [Formula directory](https://github.com/TankerHQ/homebrew-repo/tree/master/Formula).

# For maintainers

## Releasing a new version

Run:

```
cd Formula/

# Don't forget the '=' sign after the '--url' option
brew bump-formula-pr --url=https://github.com/TankerHQ/<name>/archive/v<version>.tar.gz <name>
```

Then approve and merge the generated pull request.
