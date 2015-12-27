#! /usr/bin/perl -w

foreach( `ls ./` ) {
	print $_;
	chomp; #Remove newline character
	@arrmixFileStats = stat( $_ );
	foreach( @arrmixFileStats ) {
		print $_ . "\n";
	}
}
