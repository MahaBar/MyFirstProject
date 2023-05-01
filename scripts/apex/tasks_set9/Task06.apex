/**
6. Create a String variable with value 
   - print out the length of the String 
   - print out the last character index
   - print out index of second character from the last
   - split the string by empty String to get List of all characters
   - loop through each item and get the count of 'a'
   - now read the doc and try out countMatch method
 */
String city = 'Miami';
System.debug('length value is : ' + city.length()); 

Integer index = city.length()-1;
System.debug('last character value is : ' + index); 

Integer secLast = city.length()-2;
System.debug('second character value is : ' + secLast); 

List<String> characters = city.split('');
Integer count = 0;
for(String each : characters) {
  if(each == 'a'){
    count++;
  }
}
System.debug(count);

Integer countMethod = city.countMatches('a');
System.debug('myVar value is : ' + countMethod); 