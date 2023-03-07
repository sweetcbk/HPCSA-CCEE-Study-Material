require "mypack.pl";
print "enter the length of arrays\n";
$n=<>;
$i=0;
@a=();
@b=();
print "enter the elements to first array\n";
while($i<$n){
$n1=<>;
chomp($n1);
push(@a,$n1);
$i=$i+1;
}
$i=0;
print "enter the elements of second array\n";
while($i<$n){
        $n1=<>;
        chomp($n1);
        push(@b,$n1);
        $i=$i+1;
}
@c=mypack::addarray($n,\@a,\@b);
@d=mypack::subarray($n,\@a,\@b);
$max=mypack::max($n,\@c);
$min=mypack::min($n,\@c);
@sorti=mypack::compare_sort(\@c);
print "added array c: @c\n";
print "subtracted array d: @d\n";
print "max of array c:$max\n";
print "min of array c:$min\n";
print "sorted array of c:@sorti\n";
