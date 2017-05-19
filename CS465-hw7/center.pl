#center
my $str = do { local $/; <STDIN> };
	$str =~ s/(^<h(1|2|3)>.*?<\/h(1|2|3)>)/<center>$1<\/center>/gms;

	print $str;

