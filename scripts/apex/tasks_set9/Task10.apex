/**
10. Create a List of 5 String values 
   - create a Boolean variable called isAllPalindrome and set to true
   - loop through each item in the list 
      - check if the word is palindrome or not 
      - if it's not, set isAllPalindrome to false
      - else take no action (so no else)
 */
List<String> strList = new List<String>{'eye','coke','anna','bob','cake'};
Boolean isAllPalindrome = true;
for(String each : strList) {
   if(each != each.reverse()){
      isAllPalindrome = false;
      break;
   }
}
System.debug('isAllPalindrome value is : ' + isAllPalindrome); 
