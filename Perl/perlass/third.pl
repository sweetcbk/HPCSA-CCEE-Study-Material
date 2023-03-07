print "enter the string\n";
$str1=<>;
print "enter the pattern to search\n";
$pat=<>;
chomp($str1,$pat);
$len=length($str1);
$opt=index($str1,$pat);
$count=0;
while($opt!=-1){
$opt=index($str1,$pat,$opt+1);
$count+=1;
}
print "$count";
