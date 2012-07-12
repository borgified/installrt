#!/usr/bin/env perl

use warnings;
use strict;

open(INPUT,"missing_perlmodules");

while(defined(my $line=<INPUT>)){
	if($line=~/(.*)::(.*) \.\.\.MISSING/){
		my $first=$1;
		my $second=$2;
		$first=~s/\s+//g;
		$first=lc($first);
		if($first=~/::/){
			next;
		}
		$second=lc($second);
		system("sudo apt-get -y install lib$first-$second-perl");
	}
}
