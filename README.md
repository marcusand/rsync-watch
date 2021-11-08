# sync-dir-watch

Watch a local directory and sync to a remote host.
Useful for developing on one machine while running the application on another one.

## Usage

1. Clone repo
2. Create a symlink in a directory that is part of $PATH. For example in `/usr/local/bin` and give it an alias for example `sync-dir`
3. `cd` into your desired location
4. run `sync-dir <user>@<remote-host>:<location> -p <ssh-port (optional)>`
