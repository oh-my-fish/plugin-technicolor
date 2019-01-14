function underline:
  set_color -u 2> /dev/null
  inline: "$argv"
  set_color normal 2> /dev/null
end
