#! /usr/bin/perl -w

# Several Array functions

@arrintNumbers = ( 1, 2, 3, 4 );

# Pop a number
$intPopped = pop @arrintNumbers;
handlePrintFormattedMessage( 'Popped element', $intPopped );

# Push a number
push @arrintNumbers, 5;
handlePrintFormattedMessage( 'Pushed 5, now array is', @arrintNumbers );

# Push multiple numbers
push @arrintNumbers, 6, 7, 8;
handlePrintFormattedMessage( 'Pushed 6, 7, 8, now array is', @arrintNumbers );

# Shift - This will remove first element from an array
$intShifted = shift @arrintNumbers;
handlePrintFormattedMessage( 'Shifted element', $intShifted );

# Un Shift - This will add element in first position of an array
unshift @arrintNumbers, 9;
handlePrintFormattedMessage( 'Add 9 in array, now array is', @arrintNumbers );

# Un Shift multiple numbers
unshift @arrintNumbers, 12, 11, 10;
handlePrintFormattedMessage( 'Add 12, 11, 10 in array, now array is', @arrintNumbers );

#Sort array
@arrintNumbers = sort @arrintNumbers;
handlePrintFormattedMessage( 'Array is sorted', @arrintNumbers );

#Reverse sort array
@arrintNumbers = reverse @arrintNumbers;
handlePrintFormattedMessage( 'Array is reverse sorted', @arrintNumbers );

# Convert string seperated by space to array
@arrstrNames = qw ( Pune Mumbai Kolkata Delhi );
handlePrintFormattedMessage( 'Printing string converted to array', @arrstrNames ); 

# Join array elements by space and convert to string
@arrstrNames		= ( 'NYC', 'Kuala Lumpur', 'London' ); 
$strListOfCities	= join " ", @arrstrNames;
handlePrintFormattedMessage( 'Printing string joined by space from array', $strListOfCities ); 

# Split function
# Join array elements by space and convert to string
$strListOfCities	= 'NYC	Mumbai	London'; 
@arrstrNames		= split "\\t", $strListOfCities;
handlePrintFormattedMessage( 'Printing string joined by space from array using split function', @arrstrNames ); 

# Using arrays as references
@arrstrCities		= ( 'NYC', 'Kuala Lumpur', 'London' ); 
$strListOfCities	= \@arrstrCities;
handlePrintFormattedMessage( 'Printing referenced array', @{ $strListOfCities } );

#Add element to hash
%arrstrStatesCities = ( 'MH', 'Pune', 'KA', 'Bangalore' );
%arrstrStatesCities->{ 'GA' } = 'Panjim';
handlePrintFormattedMessage( 'Printing Hash', %arrstrStatesCities );

sub handlePrintFormattedMessage {
	print "\n" . '++++++++++++++++++++++++ ' . @_[0] . ' ++++++++++++++++++++++++' . "\n";
	shift @_;
	print @_;
	print "\n";
}

#EOF