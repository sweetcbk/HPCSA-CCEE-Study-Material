print ("Enter the String.\n");
$inputline = <STDIN>;
chop($inputline);
$regex="\[Tt\]he";
if($inputline ne "")
{

 @splitarr= split(/$regex/,$inputline);
}

$scalar=@splitarr;
print $scalar;
