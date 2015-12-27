#!/usr/bin/perl -w

# ^ -> used to search at the start of string.
# $ -> used to search at the end of string.
# i -> used to compare case insensitively.
# g -> used to replace the string globally ( all occurances ).

# Print string if starting with alphabets and having numbers
@arrstrMiscStrings = ( 'abcd', '123abc', 'abc123', 'efg456', 'abc123efg' );
foreach( @arrstrMiscStrings ) {
	if( $_ =~ /[a-z]\d/gi ) {
		print $_ . "\n";
	}
}

# Regex on date
$strTime = `date +%r`;

$strTime =~ /(\d\d):(\d\d):(\d\d)\s(.*)/i;

print $1 . ":";
print $4 . "\n";

# Regex if it has given string in it
my @arrstrWords = ( 'dog', 'cat', 'bird', 'hector', 'what');
foreach( @arrstrWords ) {
	if( $_ =~ /dog|cat|bird/ ) {
			print $_ . "\n";
	}
}

#print word if it has given letter in it
my @arrstrWords = ( 'might', 'night', 'tight', 'right', 'height', 'goodnight' );
foreach( @arrstrWords ) {
	if( $_ =~ /[mntr]ight/ ) {
			print $_ . "\n";
	}
}

# Replacing swapnil in following array by Neel
my @arrstrWords = ( 'Swapnil', 'Swapnil Shinde', 'Shinde Swpanil', 'Shinde', 'Swapnil Swapnil');
foreach( @arrstrWords ) {
	if( $_ =~ s/swapnil/Neel/gi ) {
			print $_ . "\n";
	}
}
#EOF