do{
print "Menu\n";
print "1. Login\n";
print "2. Exit\n";
$n=<>;
#%main=(Admin=>"admin");
if($n==1)
{
        print "Logged in as:Admin,user or guest\n";
        $u=<>;chomp($u);
        if($u eq "Admin")
        {

                do
                {
                        print "1.Add a new user\n";
                        print "2.Delete a user\n";
                        print "3.change the user password \n";
                        print "4.change the admin password \n";
                        print "5.Logout\n";
                        $ch=<>;
                        if($ch==1)
                        {
                                print "enter the user name\n";
                                $name1=<>;
                                print "enter the user password\n";
                                $pass1=<>;
                                chomp($name1,$pass1);
                                $main{$name1}=$pass1;
                                print "User added\n";
                        }
                        elsif($ch==2)
                        {
                                print "Enter the user name to delete\n";
                                $name1=<>;
                                chomp($name1);
                                delete($main{$name1});
                                print "user deleted\n";
                        }
                        elsif($ch==3){
                                print "enter the user name to change password\n";
                                $ur=<>;print "enter the password to change\n";
                                $pass=<>;chomp($ur,$pass);
                                $main{$ur}=$pass;
                                print "password changed for $ur\n";}
                        elsif($ch==4){
                                print "Enter the password for Admin\n";
                                $admpas=<>;
                                chomp($admpas);
                                $main{Admin}=$admpas;
                                print "Admin password changed\n";
                                }
                        else{                             laast;     }

}while($ch != 5);
        }
elsif($u eq "user"){
print "1.change password\n";
print "2.logout\n";
$opti=<>;
if($opti == 1){
print "enter the username to change password\n";
$usrn=<>;
print "enter the previous password\n";
$pass1=<>;
chomp($usrn,$pass1);
if ($pass1 eq $main{$usrn}){
print "enter the new password:\n";
$newpass=<>;chomp($newpass);
$main{$usrn}=$newpass;}
else{ print "password incorrect\n";}

}
else { laast;}
}
else {
print "1. logout\n";
$opt2=<>;
if ($opt2 == 1){laast;}
}
}}while($n != 2);
