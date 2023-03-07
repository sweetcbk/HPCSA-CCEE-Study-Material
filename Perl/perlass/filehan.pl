open(fn,"<","filehan.txt");
print "enter the department\n";
$str=<>;
while(<fn>){
@array=split ":",$_;
if($array[4] eq $str){
print "$array[0]:$array[1]:$array[3]";
}
else{
print "not found\n";
}
}
close fn;
