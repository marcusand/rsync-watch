# rsync-watch

Watch a local directory and sync to another location (for example a remote host on the network) via
rsync.

Useful for developing on one machine while running the application on another one.

## Requirements

- `rsync` has to be installed on both machines
- `fswatch` has to be installed on local machine

## Installation

1. Clone repo
2. Create a symlink in a directory that is part of $PATH. For example in `/usr/local/bin`
   and give it an alias for example `rsync-watch`

## Usage

```sh
rsync-watch SOURCE DESTINATION [OPTIONS]
```

### Options

- `--ignore-file` file with paths to ignore. This option will get passed to rsync's `--exclude-from`.

### Usage Example

```sh

rsync-watch my-app-folder 192.168.1.1::desktop --ignore-file my-app-foler/.gitignore
```

This will sync the local folder `my-app-folder` to a remote host in the local network
with a virtual directory or module called `desktop` while ignoring all files
that are listed in the applications `.gitignore`
