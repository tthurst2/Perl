#e^ 

sub sample_function
{
	$x = $_[0];
	$n = $_[1];
	$solution = 1;
	for (my $i = 1; $i <=$n; $i++) {
		$solution += ($x ** $i)/ factorial($i);
	}
	print $solution;
	
}
#I didn't know if perl had built-in factorial(couldn't find it), so I just wrote this.
sub factorial
{
	$input = $_[0];
	$ans = 1;
	for (my $i = 2; $i <= $input; $i++) {
		$ans *= $i;
	}
	return $ans;
}

sample_function($ARGV[0], $ARGV[1]);