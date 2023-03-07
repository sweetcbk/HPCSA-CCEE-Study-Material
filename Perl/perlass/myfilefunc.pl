package myfilefunc;
sub readdat
{
	open(fh,"<","filehan.txt");
	while(<fh>)
	{
		print "$_\n";
	}
	close fh;
}
sub writedat
{
	open(fh,">>","filee.txt");
	print "Enter emp no.-";
	$eno=<>;
	chomp($eno);
	print "Enter name-";
	$ename=<>;
	chomp($ename);
	print "Enter salary-";
	$sal=<>;
	chomp($sal);
	print"Enter designation=-";
	$desg=<>;
	chomp($desg);
	print"Enter department-";
	$dept=<>;
	print fh "$eno:$ename:$sal:$desg:$dept";
	close fh;
}
sub addsalarydep
{
	$d=shift;
	$sum=0;
	open(fh, "<","filehan.txt");
	while(<fh>)
	{
		@arr=split ":",$_;
		chomp(@arr);
		if($d eq $arr[4])
		{
			$sum=$sum+$arr[2];
		}
	}
	print "sum of salary for department $d : $sum";
}
sub addsalarydesg
{
        $d=shift;
        $sum=0;
        open(fh, "<","filehan.txt");
        while(<fh>)
        {
                @arr=split ":",$_;
                chomp(@arr);
                if($d eq $arr[3])
                {
                        $sum=$sum+$arr[2];
                }
        }
        print "sum of salary for designation $d : $sum";
}
sub desgwise
{
	open(fh,"<","filehan.txt");
	%hash=();
	while(<fh>)
	{
	@arr=split ":",$_;
	chomp(@arr);
	if(exists($hash{$arr[3]}))
	{
	$hash{$arr[3]}+=$arr[2];
	}
	else{
	$hash{$arr[3]}=$arr[2];}
	}
	for $c(keys %hash)
	{
		print "$c:$hash{$c}\n";	
	}
	close fh;
	}
return 1;
