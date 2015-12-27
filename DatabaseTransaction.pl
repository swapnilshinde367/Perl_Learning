#!/usr/bin/perl -w

use DBI;

$strHost		= 'DBI:mysql:perl_test'; #perl_test is database name
$strUserName	= 'root';
$strPassword	= 'password';

$objConnection	= DBI->connect( $strHost, $strUserName, $strPassword );

# For Insert Update Delete use "do"
$intId		= 1;
$strName	= 'Swapnil';
$objConnection->do( 'INSERT INTO users(id,name) VALUES (' . $intId. ',\'' . $strName . '\')' );

# Prepare select query
$objQuery = $objConnection->prepare( 'SELECT * FROM users' );
$objQuery->execute;
while( @arrmixResults = $objQuery->fetchrow_array ) {
	print @arrmixResults;
	print "\n";
}

#EOF