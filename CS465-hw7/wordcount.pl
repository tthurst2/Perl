#wordcount


my %words;

while(my $line = <>)
{
	foreach my $word (split /\W+/, lc($line))
	{
		$words{$word}++;
	}
}

wordSort(\%words);
#foreach my $word (sort keys %words)
#{
#	print "$word: $words{$word}\n";
#}


sub wordSort {
	$a = $_[0];
	%ref = %$a;
	foreach my $word (reverse sort { $ref{$a} <=> $ref{$b} or $b  cmp $a } keys %ref) {
		print "$word: $ref{$word}\n";
	}
}