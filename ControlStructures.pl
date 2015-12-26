#!/usr/bin/perl -w

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# If Statement
$intA = 10;
$intB = 20;
if( $intA > $intB ) {
	print 'Yup ' . $intA . ' is greater than ' . $intB . "\n";
} elsif( $intA < $intB ) {
	print 'Yup ' . $intA . ' is smaller than ' . $intB . "\n";
} else {
	print 'OMG ' . $intA . ' and ' . $intB . ' are same' . "\n";
}

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# One liner if statements
$intA = 20;
$intB = 10;
print $intA . ' is greater than ' . $intB . ' and will be printed via one liner if statement' if $intA > $intB;
print "\n";

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Unless
# You can use unless as well in here, it works if condition is false.
$intA = 20;
$intB = 10;

#As following condition is false it will print following line
unless( $intA < $intB ) {
	print $intA . ' is greater than ' . $intB . ' printed via unless' . "\n";
}

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#For loop #1
for( $intCount = $intB; $intCount < $intA; $intCount++ ) {
	print $intCount . "\n"; 
}
#For loop #1
for( $intB..$intA ) {
	print $_ . "\n";
}

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Foreach Statement
@arrstrCities = ( 'Pune', 'Mumbai', 'Delhi', 'Bangalore' );
foreach( @arrstrCities ) {
	print $_ . "\n";
}

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# While Statement
$intCount = $intB;
while(  $intCount < $intA ) {
	print $intCount . "\n";
	$intCount++;
}

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Until Statement
# Control will go inside the until if condition is false
until(  $intA < $intB ) {
	print $intB . "\n";
	$intB++;
}

#EOF