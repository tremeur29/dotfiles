# 'Lil Fetch
## A tiny little fetch tool

This script outputs system information to a terminal and a coloured bar to show off your terminal colours.

It is designed to work on my system, and thus may produce unexpected results on other platforms. If you encounter any problems, please post them as an issue together with some information about your system so that I can fix the issue.

# Usage

Simply place the `lfetch` file in a location that is in your PATH. Run `lfetch` to start the script.

# Customization

All customization can be done by modifying the script. The entries and their colours are defined between line 51 and 63.

# Known quirks

- Script doesn't run on SH due to implementing Bash features.
- Getting the distro name via `/etc/os-release` is unreliable.
- Some entries are created by running `gawk` on existing commands, changes to the commands' output can break the script.
- Colour bar is hardcoded.
