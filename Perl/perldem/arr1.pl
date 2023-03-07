@arr=();
do
{
print"Enter no.";
$n=<>;
chomp($n);
push @arr,$n;
print"Add more(y/n)";
$ans=<>;
chomp($ans); 
}while($ans eq "y");
print"@arr";
$sum=0;
foreach $n(@arr)
{
$sum +=$n;
}
print"\nsum:$sum\n"
