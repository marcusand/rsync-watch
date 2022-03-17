# rsync-watch

Watch a local path and sync to another location (for example a remote host on the network) via
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

- `--exclude` comma-separated list of paths to ignore. This option will get passed to rsync and fswatch.

### Usage Example

```sh

rsync-watch my-app-folder 192.168.1.1::desktop --exclude=my-app-folder/node_modules,my-app-folder/.env
```

This will sync the local folder `my-app-folder` to a remote host in the local network
with a virtual directory or module called `desktop` while ignoring all files in the
node_modules folder and the environment file.
