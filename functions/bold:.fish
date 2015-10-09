function bold: -a text
  if set -q text
    set_color -o ^/dev/null
    echo -e "$text"
    set_color normal ^/dev/null
  end
end
