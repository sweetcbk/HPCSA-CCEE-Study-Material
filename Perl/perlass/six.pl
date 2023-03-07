open(fn,"file.txt");
open(fn1,">","file1.txt");
while($char= getc fn){
if($char eq uc($char)){
$char1=lc($char);
print fn1 "$char1";
}
else{
$char1=uc($char);
print fn1 "$char1";
}
}
close(fn);
close(fn1);
