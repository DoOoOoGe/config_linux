function t
  nohup kitty --directory (pwd) > /dev/null 2>&1 &
  echo "Open a new kitty: "(pwd)
end
