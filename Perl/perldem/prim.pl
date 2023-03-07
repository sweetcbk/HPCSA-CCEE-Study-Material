print "enter the number:\n";
$num=<>;
chomp($num);
if($num==1){
print "$num is neither prime nor composite";}
elsif($num==2){
print "$num is a prime\n";}
else{
for($i=2;$i<$num;$i++){
if($num%$i==0){
print "$num is not prime\n";
last;
}}
if($i==$num){ 
print "$num is a prime\n";}
}
