$count=0;
print("\nNumber from 1 to 5");
while($count<=10)
{
	$count++;
	print"\n$count";
	last if $count==5;
}
print"\nEnd of loop.\n";
