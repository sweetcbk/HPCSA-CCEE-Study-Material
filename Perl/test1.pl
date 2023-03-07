do{
print "Menu\n";
print "1.Login\n";
print "2.Exit\n";
$n=<>;
%main=(Admin=>"admin");
if ($n==1)
{
print "Logged in as:Admin,user or guest";
$u=<>;
chomp($u);
if ($u eq "Admin"){

do{
print "1.Add a new user\n";
print "2.Delete a user\n";
print "3.Change the user password\n";
print "4.Change the admin password\n";
print "5.Logout\n";
$ch=<>;
if ($ch==1)
{
print "Enter the user name";
$u1=<>;
print "Enter the password";
$p1=<>;
chomp($u1,$p1);
$main{$u1}={$p1};
print "User added";
}
elsif ($ch==2){
print "Enter user name to delete";
$u1=<>;
chomp($u1);
delete($main{$u1});
print "User name deleted";
}
elsif($ch==3)
{
print "Enter the user name to change password";
$u2=<>;
print "Enter the password";
$p2=<>;
$main{$u2}=$p2;
print "password changed of $u2";
}
elsif($ch==4){
print "Enter the password for Admin\n";
$admpas=<>;
chomp($admpas);
$main{Admin}=$admpas;
print "Admin password changed\n";
}
else{
laast:
}
}
}
}
}
