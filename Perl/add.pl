@arr=(user2,user2);
do{
print "add the user\n";
$num=<>;
push @arr,$num;
print "Add more (y/n)";
$ans=<>;
chomp($ans);
print "@arr\n";
}
while($ans eq "y")
