if  [[ $2 = "-p" ]]; then
	PORT=$3
else
	PORT=22
fi

alias run_rsync='rsync -azP --no-o --no-g --delete --exclude=.git --exclude=node_modules --exclude=.next --exclude=.env -e "ssh -p $PORT" ./ "$1"'
run_rsync; fswatch -e node_modules -e .next/ -e .git -o . | while read f; do run_rsync; done
