function wrap: -a columns
  test (count $argv) -gt 1;
    and set -l text (echo $argv[2..-1])

  set -q text;
    and for line in $text
      echo -e $line | fold -s -w "$columns"
    end
end
