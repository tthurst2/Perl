#$text = @argv[1];
@times;
@file;
open my $fh1, '<', @ARGV[0];
open my $fh2, '>', @ARGV[1];
#read file
while (chomp($line = <$fh1>)) {
	push @file, $line;
	my @time = $line =~ /<time>\s*(\d{1}:\d{1,2}:\d{1,2})\s*<\/time>?/g;
	#print @time, "\n";
	foreach  my $time (@time) {
		if(@time) {
			push @times, $time;
		}
	}
}
push @file, $line;

#calculate average
$totalseconds;
foreach $time (@times) {
	($hours,$minutes,$seconds) = $time =~ /(\d):(\d\d):(\d\d)/;
	$totalseconds += ($hours * 3600) + ($minutes * 60) + $seconds;
}
$avg = $totalseconds / (scalar @times);
$avgHours = int($avg / 3600);
$avgMins = int(($avg - ($avgHours * 3600)) / 60);
$avgSecs = int($avg - ($avgHours * 3600) - ($avgMins * 60));


#print to new file
printf({$fh2} "average time = %d:%02d:%02d\n", $avgHours, $avgMins, $avgSecs);
foreach $file (@file) {
	$file =~ s/<time>\s*(\d{1}):(\d{2}):(\d{2})\s*<\/time>/<time>$1 hours, $2 minutes, and $3 seconds<\/time>/;
	printf({$fh2} "%s\n", $file);
}
