print "Enter the string\n";
$str=<>;
chomp($str);
@arr=();
foreach $s(split('',$str))
{
	if ($s eq "a" || $s eq "e" || $s eq "i"|| $s eq "o"|| $s eq "u")
	{
		next;
	}

push(@arr,$s);
}
$str=reverse(join('',@arr));
print "$str\n";
