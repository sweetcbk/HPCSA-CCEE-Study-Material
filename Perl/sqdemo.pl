sub displayall(){
$displayall->execute();
while(@arr=$displayall->fetchrow_array()){
print "$arr[0].......$arr[1]........$arr[2]\n";
}

}
sub displayById($){

$i=shift;
$sbyid->execute($i);
while(@arr=$sbyid->fetchrow_array()){
print "$arr[0].........$arr[1]........$arr[2]\n";
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
$sins->execute($id,$nm,$sal);

}
sub updatesal{
print "enter salary";
$sal=<>;
print "enter id";
$id=<>;
chomp($sal,$id);
$sup->execute($sal,$id);
}
sub deleterec()
{
print "Enter the id";
$id=<>;
chomp($id);
$del->execute($id);
}

use DBI;
use DBD::SQLite;
my $driver = "SQLite";
my $db_name = "myfirst.db";
my $dbd = "DBI:$driver:dbname=$db_name";

$dbh = DBI->connect($dbd , {RaiseError=>1}) or die "$DBI::errstr";
print "database opened successfully\n";
$displayall=$dbh->prepare("select * from mytable"); 
$sbyid=$dbh->prepare('select * from mytable where id=?');
$sins=$dbh->prepare('insert into mytable values(?,?,?)');
$sup=$dbh->prepare('update mytable set sal=? where id=?');
$del=$dbh->prepare('delete from mytable where id=?');
do{
print "1.Add record\n";
print "2.Delete a record\n";
print "3.Update salary\n";
print "4.display 1all\n";
print "5.display by id\n";
print "6.exit\n";
$choice=<>;
if($choice==1){

insertREc();
}
elsif ($choice==2)
{
deleterec();
}
elsif($choice==3){
updatesal();
}
elsif($choice==4){
displayall();
}
elsif($choice==5)
{
print "Enter id";
$id=<>;
displayById($id);
}
else{
exit 0;
}}while($choice != 6);
