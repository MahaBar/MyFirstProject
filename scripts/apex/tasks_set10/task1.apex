/* Kevin
Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
for example : '  DML   iS reaLly CoOl   '
   - Remove the space in the beginning and at the end then print 
         should be => 'DML   iS reaLly CoOl'
   - normalize the space then print 
         should be => 'DML iS reaLly CoOl'
   - check the normalized version of String startsWith 'DML' and print out true | false  (check out the existing method in String class)
   - check the normalized version of String endsWithIgnoringCase 'cool'(case insensitive) and print out true | false  (check out the existing method in String class) 
   */
  String description = '     Even MIRACLes takeS       A      Little TIme    ';
  //trim(): Returns a copy of the string that no longer contains any leading or trailing white space characters.
  String trimmedDescription = description.trim();
  System.debug(trimmedDescription);

  //normalizeSpace(): Returns the current String with leading, trailing, and repeating white space characters removed.
  String normalizedDescription = description.normalizeSpace();
  System.debug(normalizedDescription);

  //startsWith(prefix): Returns true if the String that called the method begins with the specified prefix.
  Boolean startsWithEven = normalizedDescription.startsWith('Even');
  System.debug(startsWithEven);

  //endsWithIgnoreCase(suffix): Returns true if the current String ends with the specified suffix; otherwise, returns false.
  Boolean endsWith = normalizedDescription.endsWithIgnoreCase('time');
  System.debug(endsWith);
