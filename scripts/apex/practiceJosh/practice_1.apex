List<String> words = new List<String>{'Hello', 'world', 'how', 'are', 'you'};

String joinedWords = String.join(words, ' ');
System.debug(joinedWords);

String[] splitWords = joinedWords.split('o');

System.debug(splitWords);
System.debug(splitWords.size());


System.debug('------------------');

// practice join, round and intValue methods
// find the max number with max method
List<Double> numbers = new List<Double>{1.2, 3.5, 10.4, 8.6, 9.1};
System.debug(String.join(numbers, '-')); // it becames a String now
for(Double each : numbers) {
    System.debug('Round is  ' + each.round()); // to the clothest number
    System.debug('intValue is ' + each.intValue()); // to the first digist
}

Double max = numbers[0]; // next it bacames 3.5, then 10.4 ...
for(Integer i=0; i<numbers.size() ;i++) {
    max = Math.max(max, numbers[i]);
}
System.debug('Max number is : ' + max);

System.debug('------------------');

/* palindrome: a word, phrase or sequence that reads the same backwards as forwards, 
e.g. madam or nurses run
*/

// find the palindrome words
// find the palindrome words after deleting all spaces
// find the index of character o in palindrome words
// add palindrome words to a new list
// practice uppercase and length methods

List<String> words = new List<String> {'wow', 'kayak', 'date', 'never odd or even', 'Was it a car or a cat I saw', 'day'};

for(String eachWord : words){

    eachWord = eachWord.deleteWhitespace();

    if(eachWord == eachWord.reverse()){

        System.debug(eachWord + ' is palindrome');
    }
}