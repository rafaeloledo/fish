function z 
  set dir (find . -type d -name $argv[1] -print -quit)
  if test -n "$dir"
    cd "$dir"
  else
    echo "Directory not found: $argv[1]"
  end
end
