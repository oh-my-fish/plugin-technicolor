function underline:
  set_color -u ^/dev/null
  printf "$argv"
  set_color normal ^/dev/null
end
