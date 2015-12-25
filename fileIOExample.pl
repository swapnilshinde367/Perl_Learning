#!/usr/bin/perl -w
#open file to read from it
print "\n". '++++++++++++++++++++++++++++++++++++++' . "\n";
open( objFileHandler, 'what.txt' ) || die "$!";
#fetch it in array
@arrmixFileData = <objFileHandler>;

print 'Printing as an array: ' . "\n";
foreach( @arrmixFileData ) {
	print $_;
#Print splitting by tab
	if( $_ =~ /\t/ ) {
		print 'Tabbed line' . $_;
	}
}

open( objFileHandler, 'what.txt' ) || die "$!";
print "\n". '++++++++++++++++++++++++++++++++++++++' . "\n";
print 'Printing directly from file handler: ' . "\n";
foreach( <objFileHandler> ) {
	print $_;
}
