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
