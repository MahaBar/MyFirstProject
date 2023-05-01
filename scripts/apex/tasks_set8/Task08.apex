/*8. Write an Apex code that create List of 10 Integers
   - create a variable called largestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assin largestValue to 
     - the result of Math.max(largestValue, each)
   - print out largestValue outside the loop
   - and that's how we can get max values in List of Integers
   - try to change the values of List item and run again */

List<Integer> list1 = new List<Integer>{34,67,45,89,96,34,27,97,3,83};

Integer largestValue = list1[0];

for(Integer each : list1) {
  //if(each>largestValue)
  //largestValue=each;

  largestValue=Math.max(largestValue, each);
}

System.debug('largestValue '+largestValue); 