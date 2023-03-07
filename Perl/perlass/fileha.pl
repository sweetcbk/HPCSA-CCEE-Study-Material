require "myfilefunc.pl";
do
{
	print "\n1.Read data from file\n";
	print "2.Write data in file\n";
	print "3.Add salary of particular department\n";
	print "4.Add salary of particular designation\n";
	print "5.Add salary designationwise\n";
	print "6.Exit\n";
	$ch=<>;
	if($ch==1)
	{
		myfilefunc::readdat();
	}
	elsif($ch==2)
	{
		myfilefunc::writedat();
	}
	elsif($ch==3)
	{
		print "enter department";
		$dept=<>;
		chomp($dept);
		myfilefunc::addsalarydep($dept);
	}
	elsif($ch==4)
	{
		print "enter designation:";
                $desg=<>;
                chomp($desg);
                myfilefunc::addsalarydesg($desg);
	}
	elsif($ch==5)
	{
		myfilefunc::desgwise();	
	}
	else
	{
		exit 0;
	}
}while($ch!=6);
