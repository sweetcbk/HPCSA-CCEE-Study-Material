
sub findEmp{
my $empno=shift;
open(fn,"<","empdata.dat");
while(<fn>){
my @arr=split ":",$_ ;
if($arr[0] == $empno){
return $arr[1];}}}
sub findemplist{
my $desg=shift;
open(fn,"<","empdata.dat");
while(<fn>){
my @arr= split ":",$_;
if($arr[2] eq $desg){
print "$arr[1]\n";
}}}
sub addemp{
open(fn,">>","empdata.dat");                                                    print "enter the employee id:\n";                                               my $empid=<>;                                                                   print "enter the employee_name:\n";                                             my $empname=<>;   
print "enter their designation:\n";                                             my $desg=<>;                                                                    
print "enter the salary:\n";                                                    my $sal=<>;
chomp($empid,$empname,$desg,$sal);                                              print fn "$empid:$empname:$desg:$sal\n";                                           
}                                                                                  
sub displayall{                                                                 open(fn,"empdata.dat");                                                        
while(<fn>){                                                                       
my @arr=split ":",$_ ;                                                             
print "$arr[1]\n";                                                                 
}                                                                                  
}                                                                             open(fn,">","empdata.dat");                                                        do{                                                                                
print "enter the employee id:\n";                                                  
$empid=<>;
print "enter the employee_name:\n";                                                $empname=<>;                                                                       
print "enter their designation:\n";                                                $desg=<>;                                                                          
print "enter the salary:\n";                                                       $sal=<>;                                                                           
chomp($empid,$empname,$desg,$sal);                                                 
print fn "$empid:$empname:$desg:$sal\n";                                           
print "do you need to add(y/n):\n";                                                $opi=<>;                                                                           chomp($opi);                                                                       
}while($opi eq 'y');                                                               close(fn);                                                                   print "enter the employee no to find:\n";                                          $no=<>;                                                                            $emp=findEmp($no);                                                                 
print"$emp\n";                                                                                                                                                                                                                                                       
print "enter the designation to find the employees:\n";                            $desg=<>;                                                                          chomp($desg);                                                                      findemplist($desg);                                                                
displayall();       
         
