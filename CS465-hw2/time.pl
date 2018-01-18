while(1) {
	print "Enter Time!\n";
	chomp($input = <>);
	@time = split(/:/, $input);
	if(@time[0] < 13)
	{
		print "@time[0]:@time[1]:@time[2]am\n";
	}
	elsif(@time[0] < 25) {
		$v = $time[0] - 12;
		print "$v:@time[1]:@time[2]pm\n";
	}
	else {
		print "That time isn't real!\n"
	}
}