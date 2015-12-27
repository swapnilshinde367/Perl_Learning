#! /usr/bin/perl -w

# Execute bash commands via perl

# enclosing commands in `` does execute however it doesn't print output unless put it in print statement
print( `ls -lah` );

# Using system function

system( 'service apache2 status' );
# Or
system 'service apache2 status';

# Using exec statement
exec ( 'service apache2 status' );
# Or
# In my observation if "exec" has already ran in script, it won't execute next "exec" command, so following won't produce any output
exec 'service apache2 status'; 

#EOF