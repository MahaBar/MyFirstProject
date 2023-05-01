/* palindrome: a word, phrase or sequence that reads the same backwards as forwards, 
e.g. madam or nurses run
*/

// find the palindrome words
// find the palindrome words after deleting all spaces
// find the index of character o in palindrome words
// add palindrome words to a new list
// practice uppercase and length methods

List<String> words = new List<String> {'wow', 'kayak', 'date', 'never odd or even', 'Was it a car or a cat I saw', 'day'};

List<String> palindromes = new List<String>();

for(String eachWord : words){

    eachWord = eachWord.deleteWhitespace();
    
    if(eachWord == eachWord.reverse()){
        System.debug(eachWord + ' is palindrome');

        if(eachWord.contains('o')){
        System.debug('Index of o is ' + eachWord.indexOf('o'));

        }

        palindromes.add(eachWord);
    }
}

System.debug('Palindromes list '  + palindromes);

for(String eachPalindrome : palindromes){
    System.debug(eachPalindrome.toUpperCase() + ' length is ' + eachPalindrome.length());
}