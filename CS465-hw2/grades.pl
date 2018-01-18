#grades


@grades = ();
while (chomp($line = <>)) {
	@data = split /,/, $line;
	$new_rec = { lastname => $data[0], firstname => $data[1], $data[2] => $data[3]};
	push(@grades, $new_rec)
}

foreach $element (@grades) {
	foreach $key (keys(%$element)) {
		print $key, ":",  $$element{$key}, "\n";
	}
}