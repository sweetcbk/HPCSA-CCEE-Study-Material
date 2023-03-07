package mypack;
sub addarray{
my ($n,$a,$b)=(shift,shift,shift),
my $i=0;
my $num1;
my @c=();
while($i<$n){
        $num1=$a->[$i]+$b->[$i];
        push(@c,$num1);
        $i=$i+1;
}
return @c;
}
sub subarray{
my ($n,$a,$b)=(shift,shift,shift),
my $i=0;
my $num1;
my @c=();
while($i<$n){
        $num1=$a->[$i]-$b->[$i];
        push(@c,$num1);
        $i=$i+1;
}
return @c;
}
sub max{
my ($n,$a)=(shift,shift);
my $i=0;
my $maxi =$a->[1];
while($i<$n){
if($a->[$i]>$maxi){
$maxi=$a->[$i];
}
$i=$i+1;
}
return $maxi;}
sub min{
my ($n,$a)=(shift,shift);
my $i=0;
my $mini =$a->[1];
while($i<$n){
if($a->[$i]<$mini){
$mini=$a->[$i];
}
$i=$i+1;
}
return $mini;}
sub compare_sort
{
$item=shift;
@item=sort {$a <=> $b} @{$item};
return @item;

}
return 1;
