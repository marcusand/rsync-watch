if [[ $3 = "--ignore-file" ]]; then
  EXCLUDE_FROM=$4
fi

alias run_rsync='rsync -azP --no-o --no-g --delete --exclude-from='$EXCLUDE_FROM' "$1" "$2"'
run_rsync; fswatch -o "$1" | while read f; do run_rsync; done
