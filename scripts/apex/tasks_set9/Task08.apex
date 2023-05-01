/**
8. Create a String with a long sentence
   - split the sentence to get word list 
   - create a variable called longestCharCount
   - assign it's value to first item length
   - loop through each item 
      - use Math.max(longestCharCount, each.length() )
   - outside your loop , print to see the result of longestCharCount
 */

String sentence = 'Good morning everybody!';
List<String> newWordList = sentence.split(' ');
Integer longestCharCount = newWordList.get(0).length();
for(String each : newWordList) {
   longestCharCount = Math.max(longestCharCount, each.length());
}
System.debug('Current value : ' + longestCharCount);
   