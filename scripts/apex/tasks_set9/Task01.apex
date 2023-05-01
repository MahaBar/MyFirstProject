/**
1. Create a variable contains your full name
   - print it out in uppercase
   - print it out in lowercase
   - find the index of space and print
   - print first char of first and last name together :initials
 */

String fullName = 'Makhabbat Barlybay';
System.debug('fullName.toUpperCase value is : ' + fullName.toUpperCase()); 
System.debug('fullName.toLowerCase value is : ' + fullName.toLowerCase()); 
System.debug('fullName.indexOf(\' \') value is : ' + fullName.indexOf(' ')); 
System.debug('my initials value is : ' + fullName.left(1)+fullName.right(8).left(1) ); 



