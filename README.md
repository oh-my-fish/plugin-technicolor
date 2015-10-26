<img src="https://dl.dropboxusercontent.com/u/56336/omf/omf-logo-optimised.svg" align="left" width="144px" height="144px"/>

#### Technicolor
> A composable way to format and colorize text. For [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](http://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

Technicolor is a declarative DSL which provides a DRY approach to shell text colorization.

## Function DSL

Each function does one, and only one thing, and is named accordingly to its duty, with a reduced character count whenever possible. All public DSL functions are ended by `:`.

### Colorisation

You can make text coloured using `tint:`.

```fish
tint: red The London bridge is falling down!
tint: 555 The London bridge is falling down!
echo (tint: red "Error!") Something went wrong!
```

Set a background color using `bg:`

```fish
bg: blue Violets are blue
bg: 400 Want some wine, sir\?
```

Use both via command substitution!

```fish
bg: red (tint: white You better read this text!)
tint: white (bg: red You better read this text!)
```

### Stylization

Make text `bold:`

```fish
bold: The quick brown fox jumps over the lazy dog
```

Output text verbatim, without _adding_ newlines or trailing spaces using `inline:`

```fish
function oompa
  inline: "Oompa Loompa "
  inline: "doom-pa-dee-do "
  inline: "I have another "
  inline: "puzzle for you"
end
```

Sometimes you want to wrap text in a specific column. Use `wrap:`

```fish
function lorem
  wrap: 80 "Lorem ipsum dolor sit amet, consectetur" \
           "adipiscing elit. Nulla in purus quis erat" \
           "aliquet tristique eget et risus. Pellentesque" \
           "eget leo id urna dignissim elementum quis ut" \
           "libero. Vivamus interdum at nunc sagittis cursus."
end
```

## What Technicolor fixes

Fish shell provides the builtin function `set_color`, which abstracts terminal text colorization in a _orthogonal_ function.

Note that even using this abstraction, shell colors still continue to be __stateful__, so once you switch to a color you need to reset the changes manually. This fact makes producing beautiful CLIs a true nightmare:

```fish
function explode
  set_color --bold red
  printf "Error: "
  set_color normal
  set_color red
  echo "You can't explode"
  set_color normal
end
```

Using Technicolor it's possible to transform the above function into the one below:

```fish
function explode
  echo (tint: red (bold: "Error: "))(tint: red "You can't explode")
end
```

# License

[MIT][mit] © [Derek Stavis][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/derekstavis
[contributors]:   https://github.com/derekstavis/plugin-technicolor/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[travis-badge]:   http://img.shields.io/travis/derekstavis/technicolor.svg?style=flat-square
[travis-link]:    https://travis-ci.org/derekstavis/technicolor
