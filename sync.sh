if [[ $3 == --exclude=* ]]; then
  exclude_string=${3#--exclude=}
  exclude_array=(${exclude_string//,/ })

  exclude=""

  for exclude_path in "${exclude_array[@]}"
  do
    exclude+="--exclude=$exclude_path "
  done
fi


alias run_rsync='rsync -azP --inplace --no-o --no-g --delete $exclude "$1" "$2"'
run_rsync; fswatch -o $exclude "$1" | while read f; do run_rsync; done
