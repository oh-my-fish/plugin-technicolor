function bold: -a text
  if set -q text
    set_color -o ^/dev/null
    inline: "$text"
    set_color normal ^/dev/null
  end
end
