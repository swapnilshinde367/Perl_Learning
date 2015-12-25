#!/usr/bin/perl -w
sub handlePrintArray {
	#Divide array which came as argument array into scalar variables
	( $intA, $intB, $intC ) = @_;
	
	print $intA + $intB + $intC . "\n";
	
	#Iterate through argument array
	foreach( @_ ) {
		print $_ . "\n";
	}
}

handlePrintArray( 1, 2, 3 );
