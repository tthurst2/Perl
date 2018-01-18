#read standard in
#average - sum(n)/ n
#variance - sum(n - avg(n))^2 / (n-1)
#std deviation  - sqrt(variance)
@nums = ();
while (chomp($line = <>)) {
	@numline = split / /, $line;
	push(@nums, @numline);
}
$total = 0;
foreach $num (@nums) {
	$total += $num;
}

$avg = $total / scalar(@nums);
$var_total = 0;
foreach $num (@nums) {
	$var_total += ($num - $avg) ** 2;
}
#calculate fields for output
$avg = $total / scalar(@nums);
$SV = $var_total / (scalar(@nums) - 1);
$SSD = sqrt($SV);

#print outputs
print "average : ", $avg, "\n";
print "sample variance : ", $SV, "\n";
print "sample standard deviation : ", $SSD, "\n";