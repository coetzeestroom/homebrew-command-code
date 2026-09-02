# homebrew-command-code

This repository contains a Homebrew tap for [command-code](https://www.npmjs.com/package/command-code), an AI coding agent that runs in your terminal. Use this tap to easily install and manage command-code on macOS and Linux using Homebrew.

## Installation

### Recommended Method (Direct Install)

The easiest way to install command-code is to use its fully qualified name. This automatically adds the tap and trusts the formula.

```bash
brew install coetzeer/command-code/command-code
```

### Alternative Method (Tap First)

You can also tap the repository first and then install the formula.

1.  **Tap the repository:**
    ```bash
    brew tap coetzeer/command-code
    ```

2.  **Trust the command-code formula:**
    For security, it's recommended to trust only the specific formula you intend to install:
    ```bash
    brew trust --formula coetzeer/command-code/command-code
    ```
    *(If you fully trust this tap and its contents, you could optionally trust the whole tap with `brew trust coetzeer/command-code`)*

3.  **Install command-code:**
    ```bash
    brew install command-code
    ```

### Development

1. Check out the repo

   ```bash
   git clone git@github.com:coetzeer/homebrew-command-code.git
   ```

2. Tap the local dir: 
   ```bash
   brew tap coetzeer/command-code ./homebrew-command-code
   ```

### Verify Installation

After installation, you can verify it by checking the version:

```bash
command-code --version
```

## Formula Details

*   **Version:** 1.40.1
*   **Dependencies:** `node@22`
*   **License:** MIT
*   **Homepage:** https://www.npmjs.com/package/command-code

## Maintenance

If you need to update the formula (e.g., due to a new version of command-code):

1.  Update the `url` and `sha256` checksum in the `Formula/command-code.rb` file to match the new release.
2.  Commit and push the changes.
3.  Homebrew will automatically pick up the new version on the next `brew update`.

An automated script (`update_command_code.py`) can be used to check for updates and update the formula automatically.