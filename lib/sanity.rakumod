unit module sanity;

# Disable $x.base("camel") and $x.base("beer") easter eggs
{
	Int.^lookup("base").wrap(sub ($, $_) { $_.Num.sink; callsame });
}

# Disable $x.parse-base(Str)
{
	Str.^lookup("parse-base").wrap(sub ($,Int $radix) { nextsame });
}
