## sanity

Adds some sane defaults for your production Raku programs

### SYNOPSIS

```
use sanity;

42.base("beer");  # throws exception
42.base("camel"); # throws exception

"🍻🍺🍻🍺🍻🍺".parse-base("beer");  # throws exception
"🐫🐪🐫🐪🐫🐪".parse-base("camel"); # throws exception
```

### DESCRIPTION

A continually updating collection of Rakudo tweaks to workaround or disable features that are of little or no use in production software.

### GLOBAL APPLICATION

Run scripts or one-liners using `-Msanity`, i.e. `raku -Msanity bin/my-application.raku`


### WHY

```
# Wat?
$ raku -e 'say 42.base("beer");'
🍻🍺🍻🍺🍻🍺

# Ok!
$ raku -Msanity -e 'say 42.base("beer");'
Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏beer' (indicated by ⏏)
  in sub  at /home/foobar/raku/install/share/perl6/site/sources/A6EEB7BD88D20C81DF439CAA2EA158E8EFDBB112 (sanity) line 5
  in block <unit> at -e line 1
```
