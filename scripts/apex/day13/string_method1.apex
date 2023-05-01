/**

String is a Data type to Store text 

It has a lot of reusable methods that we can use directly 
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods

 */

String message = 'Hello World' ; 

//--------------Checking for String contains some substring 
/**
contains(substring)
Returns true if and only if the String that called the method contains the specified sequence of characters in substring.
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_contains

Example :   
'abcd' contains 'ab'  true  
'abcd' contains 'ac'  false   
 */

System.debug('message.contains(\'Hello\')  value is : ' + message.contains('Hello') ); 
System.debug('message.contains(\'hello\') value is : ' + message.contains('hello')); 
System.debug('message.contains(\'Jon\') value is : ' + message.contains('Jon')); 


/**
containsIgnoreCase(substring)
Returns true if the current String contains the specified sequence of 
characters without regard to case; otherwise, returns false.
 */
System.debug('message.containsIgnoreCase(\'hello\') value is : ' 
                                + message.containsIgnoreCase('hello'));



/**
containsNone(inputString)
Returns true if the current String doesn't contain any of the characters in the specified
String; otherwise, returns false.
 */
 System.debug('message.containsNone(\'Hlo\') value is : ' 
                                + message.containsNone('Hlo'));
// OUTPUT message.containsNone('Hlo') value is : false
 System.debug('message.containsNone(\'AB\') value is : ' 
                                + message.containsNone('AB'));
// OUTPUT message.containsNone('AB') value is : true (doesnt have AB)
System.debug('message.containsNone(\'LO\') value is : ' 
                                + message.containsNone('LO'));

// if we found one character it will true

System.debug('message has no Number : ' + message.containsNone('012334568'));
// OUTPUT message has no Number :true


System.debug('--------containsOnly----------');


/**
containsOnly(inputString)
Returns true if the current String contains characters 
only from the specified sequence of characters and not 
any other characters; otherwise, returns false.
*/
// Hello world is made of these characters : Helo Wrd

System.debug('message.containsOnly(\'HeloWrd\') value is : ' 
                        + message.containsOnly('HeloWrd')); // true 

System.debug('message.containsOnly(\'He\') value is : ' 
                        + message.containsOnly('He')); // false

System.debug('message.containsOnly(\'ABC\') value is : ' 
                        + message.containsOnly('ABC')); // false


String text = 'aaaaooooeee';
System.debug('text variable value is : ' + text ); 
// check if this text only contains vowel : a e o u i
System.debug('text.containsOnly(\'aeoui\') value is : ' 
                        + text.containsOnly('aeoui')); 


System.debug('--------Equality----------');
System.debug('is message == Hello World ' 
                        + (message=='Hello World') ); // true
System.debug('is message == hello World ' 
                        + (message=='hello World') ); // true

// == does not care about case sensitive
// equals(anotherString) method for checking equality in case sensitive manner

System.debug('message.equals(\'Hello World\') value is : '
                        + message.equals('Hello World')); // true
System.debug('message.equals(\'hello World\') value is : '
                        + message.equals('hello World')); // false





/**
join(iterableObj, separator)
Joins the elements of the specified Collection, 
such as a List, into a single String separated 
by the specified separator.
 */
 /**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText); 

String str = 'abcabc';
/**
remove(substring)
Removes all occurrences of the specified substring and returns the String result.
 */ 
 System.debug('str.remove(\'a\') value is : ' + str.remove('a') ); 
 str = str.remove('a'); 
 System.debug('str value is : ' + str);
















