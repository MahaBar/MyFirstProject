/**
anagrams words contain the same letters in a different order
for example : late , tale , teal

4. Write a program that 
   - create two string variables with values
   - print 'Its not anagram!!' they are the same' if they are equal
   - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
   - print 'Its not anagram!!'
   - HINT : use containsOnly method twice on each other
 */

String word1 = 'late';
String word2 = 'tale';

if( word1.containsOnly(word2) && word2.containsOnly(word1) ){
  System.debug('It is anagram!!'); 
}else{
  System.debug('Its not anagram!!');  
}