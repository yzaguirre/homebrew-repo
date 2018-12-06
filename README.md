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
# Don't forget the '=' sign after the '--url' option
brew bump-formula-pr --url=https://github.com/TankerHQ<name>/archive/v<version>.tar.gz <name>
```

Then you can:
* Run `brew edit <name>`
* Overwrite the matching file in the `Formula/` directory
* Make a pull request with a commit message `<name> <version>`
* Merge to the `master` branch
