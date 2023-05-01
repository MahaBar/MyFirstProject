/** 
Create a program that take some item from One List to Another according to the condition 
  1. Create List of Integer with 9 elements|items 
  2. Create another empty List of Integer 
  3. Iterate over the first List using for each loop 
    - check if the number is between 5-10 
      - if so add this number to second list using secondList.add(itemHere) ; 

  4. Print out the first List 
  5. Print out the second List and it's size
*/
List<Integer> elemList = new List<Integer>{5,9,6,11,6,98,33,6,11};
List<Integer> emptyList = new List<Integer>();

for(Integer eachElement : elemList){
  if(eachElement >=5 && eachElement <=10 ){
    emptyList.add(eachElement);
  }
}
System.debug(elemList);
System.debug(emptyList);
System.debug(emptyList.size()) ;