#line 1
chomp($line = <>);
print $line, "\n";
if ($line =~ /^(double|queen|king|suite)$/) {
	print "Bed size matches!\n";
}
else {
	print "Bed size fails!";
}

#line 2
chomp($line = <>);
print "$line\n";
if ($line =~ /^(\d{1,2})-(\d{1,2})-(20)(\d{2})$/) {
	print "Check-in date matches!\n";
}
else {
	print "check in date fails!\n";
}

#line 3
chomp($line = <>);
print "$line\n";
#remove whitespace - I am assuming you meant 30 characters in the person's name, not including spaces.
$line =~ tr/ //ds;
if ($line =~ /^(\w{1,30})$/x) {
	print ("guest name matches!\n")
}
else {
	print "guest name fails!\n"
}

#line 4
print "$line\n";
chomp($line = <>);
if ($line =~ /^(pl|gl)-?[1-9][0-9]{3}$/) {
	print "ID Matches!\n"
}
else {
	print "ID Fails!\n"
}

#line 5
print "$line\n";
chomp($line = <>);
if ($line =~ /^(011|\(011\))( |-)(\d{1,3})( |-)(\d{2})( |-)(\d{3}-\d{4})$/) {
	print "phone number matches!\n"
}

else {
	print "phone number fails!\n"
}