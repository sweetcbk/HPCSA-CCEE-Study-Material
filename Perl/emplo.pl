sub displayall(){
$displayall->execute();
while(@arr=$displayall->fetchrow_array()){
print "$arr[0].......$arr[1]........$arr[2]........$arr[3]\n";
}

}
sub displayById($){

$i=shift;
$sbyid->execute($i);
while(@arr=$sbyid->fetchrow_array()){
print "$arr[0].........$arr[1]........$arr[2]........$arr[3]\n";
}
}

sub displayBydesg($){

$i=shift;
$sbyid->execute($i);
while(@arr=$sbyid->fetchrow_array()){
print "$arr[0].........$arr[1]........$arr[2]........$arr[3]\n";
}

}
sub insertREc{
print "enter id";
$id=<>;
chomp($id);
print "enter name";
$nm=<>;
chomp($nm);
print "enter sal";
$sal=<>;
chomp($sal);
print "enter desg";
$des=<>;
chomp($des);
$sins->execute($id,$nm,$sal,$des);

}

use DBI;
use DBD::SQLite;
my $driver = "SQLite";
my $db_name = "myfirst.db";
my $dbd = "DBI:$driver:dbname=$db_name";

$dbh = DBI->connect($dbd , {RaiseError=>1}) or die "$DBI::errstr";
print "database opened successfully\n";
$sins=$dbh->prepare('insert into mytable values(?,?,?,?)';
$sbyid=$dbh->prepare('select * from mytable where id=?');
$sbydes=$dbh->prepare('select * from mytable where desg=?');
$displayall=$dbh->prepare("select * from mytable"); 


do{
print "1.Add employee\n";
print "2.Find by employee id\n";
print "3.Find by employee desg\n";
print "4.display all\n";
print "5.exit\n";
$choice=<>;
if($choice==1){

insertREc();
}
elsif($choice==2)
{
print "Enter id";
$id=<>;
displayById($id);
}

elsif($choice==3)
{
print "Enter desg";
$des=<>;
displayBydesg($des);
}

elsif($choice==4){
displayall();
}
else{
exit 0;
}}while($choice != 5);
