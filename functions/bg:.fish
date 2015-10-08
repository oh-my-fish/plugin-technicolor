function bg: -a color
  test (count $argv) -gt 1;
    and set -l text $argv[2..-1]

  if set -q text
    set_color -b $color ^/dev/null

    for line in $text
      echo -e "$line"
    end

    set_color normal ^/dev/null
  end
end
