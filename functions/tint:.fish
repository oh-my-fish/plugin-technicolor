function tint: -a color
  test (count $argv) -gt 1;
    and set -l text $argv[2..-1]

  if set -q text
    set_color $color 2> /dev/null
    inline: "$text"
    set_color normal 2> /dev/null
  end
end
