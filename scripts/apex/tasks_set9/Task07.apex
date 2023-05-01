/**
7. Create a String with a long sentence
   - print out the word count in sentence
   - loop through each item and reverse it 
   - outside your loop , print to see the result
 */

String sentence = 'Good morning everybody!';
List<String> splitSentence = sentence.split(' ');
List<String> reversed = new List<String>();
System.debug('word list value is : ' + splitSentence); 
System.debug('word count value is : ' + splitSentence.size()); 
for(String each : splitSentence) {
  reversed.add(each.reverse());
}
System.debug('Reversed String is : ' + reversed);
  