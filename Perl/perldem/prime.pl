print"Enter the no.\n";
$x=<>;
chomp($x);
$c=0;
for($i=1;$i<=$x;$i++)
{
	if($x%$i==0)
	{
		$c=$c+1;
	}
}
if($c==2)
{
	print"$x is prime\n";
}
else
{
	print"$x is composite\n";
}
