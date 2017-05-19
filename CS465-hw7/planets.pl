
use 5.010;
 
my %planets = (
   Mercury => 0.4,
   Venus   => 0.7,
   Earth   => 1,
   Mars    => 1.5,
   Ceres   => 2.77,
   Jupiter => 5.2,
   Saturn  => 9.5,
   Uranus  => 19.6,
   Neptune => 30,
   Pluto   => 39,
   Charon  => 39,
);
 
 
dank(\%planets);
 
sub dank {

	$a = $_[0];
	%ref = %$a;
	foreach my $name (sort { $ref{$a} <=> $ref{$b} } keys %ref) {
		printf "%-8s %s\n", $name, $ref{$name};
	}
} 
 
