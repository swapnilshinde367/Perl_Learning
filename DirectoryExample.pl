#!/usr/bin/perl -w
#Open directory and read its content from it
opendir( $objDirectoryHandle, '/home/swapnil/perl_code/NewCodeForPerl' );
@arrmixDirData = readdir( $objDirectoryHandle );
foreach( @arrmixDirData ) {
	print $_ . "\n";
}
