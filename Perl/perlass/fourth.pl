print "Menu\n";
print "1. Login\n";
print "2. Exit\n";
$n=<>;
if($n==1)
{
	print "Logged in as:Admin,user or guest";
	$u=<>
	if($u eq "admin")
	{
		@names=();
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
				$name1=<>:
				chomp($name1);
				push(@names,$name1);
				print "User added";	
			}
			elsif($ch==2)
			{
				print "Enter the user name to delete\n";
				$name1=<>:
				chomp($name1);
				delete(@names,$name1);
			}
			
			elsif($ch==3){

				


}

}
	}
}
else{
exit 0;
}
