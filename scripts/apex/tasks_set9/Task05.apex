/**
5. Create a string variable containing an email address, 
   - for example jonsnow@nightwatch.com
   - store the index of the '@' character in the email address.
   - print out the part before '@' in uppercase
   - print out whatever is after '@' 
   - print out last 3 characters
 */

String email = 'jonsnow@nightwatch.com';
Integer index = email.indexOf('@');
System.debug('index value is : ' + index); 
System.debug('before @ value is : ' + email.left(index).toUpperCase()); 
System.debug('after @ value is : ' + email.mid(index, email.length() - index)); 
System.debug('last three characters value is : ' + email.right(3)); 