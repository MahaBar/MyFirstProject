/**
String is a Data type to Store text 

It has a lot of reusable methods that we can use directly 
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods

 */

String message = 'Hello World' ; 

//https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_length

// length() method: return the character count inside the String 
System.debug('message.length() value is : ' + message.length()); 



// isEmpty(yourStringHere) method : return true if it's not '' or null else false
System.debug('String.isEmpty(message) value is : ' + String.isEmpty(message)); 
// OUTPUT String.isEmpty(message) value is : false

String msg1 = '   ' ; // this is no empty, space is a character
System.debug('String.isEmpty(msg1) value is : ' + String.isEmpty(msg1)); 



// isBlank method : returns true if the specified String is white space, empty (''), or null; otherwise, return false
System.debug('String.isBlank(msg1) value is : ' + String.isBlank(msg1)); 


// toUpperCase() return the UPPERCASE version of the text
System.debug('message.toUpperCase() value is : ' + message.toUpperCase()); 


// toLowerCase() return the lowercase version of the text
System.debug('message.toLowerCase() value is : ' + message.toLowerCase()); 



String season = 'suMmEr';
// switch on season {
//     when 'Spring' {
//         System.debug('value spring match');
//     }
//     when 'Summer' {
//         System.debug('value summer match');
//     }
//     when 'Fall' {
//         System.debug('value fall match');
//     }
//     when else {
//         System.debug('nothing match');
//     }
// }
// OUTPUT nothing match because switch statement is sensitive

switch on season.toLowerCase() { // we can use this technic
    when 'spring' {
        System.debug('value spring match');
    }
    when 'summer' {
        System.debug('value summer match');
    }
    when 'fall' {
        System.debug('value fall match');
    }
    when else {
        System.debug('nothing match');
    }
}







