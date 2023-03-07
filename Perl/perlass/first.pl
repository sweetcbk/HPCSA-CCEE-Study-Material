print "enter the string";
$str=<>;
chomp($str);
foreach $char(split('',$str))
{
if($char eq uc($char))
{
print lc($char);
}
else{
print uc ($char);
}
}
