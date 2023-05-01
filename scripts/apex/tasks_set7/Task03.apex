/**
3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out 
 */
List<Integer> numberList = new List<Integer>{1,2,3,4,5,6,7,8,9,10};
List<Integer> reverse = new List<Integer>();

for(Integer i=numberList.size()-1; i>=0 ;i--) {
  reverse.add(numberList[i]); // or numberList.get(i)
}
System.debug(reverse);