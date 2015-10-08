function wrap: -a columns
  test (count $argv) -gt 1;
    and set -l text $argv[2..-1]

  set -q text;
    and echo "$text" | fold -s -w "$columns"
end