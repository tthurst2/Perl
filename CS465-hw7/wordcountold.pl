#wordcount

use strict;
use warnings;

my %words;

while(my $line = <>)
{
	foreach my $word (split /\s+/, $line)
	{
		$words{$word}++;
	}
}
foreach my $word (keys %words)
{
	print "$word: $words{$word}\n";
}