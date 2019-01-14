function bold:
  set_color -o 2> /dev/null
  inline: "$argv"
  set_color normal 2> /dev/null
end
