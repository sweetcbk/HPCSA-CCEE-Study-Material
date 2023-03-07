$num=50;
do{
print "guess the number:";
$guess=<>;
if($num!=$guess){
print"oops wrong\n";}
}while($num!=$guess);
print "you got it\n"
