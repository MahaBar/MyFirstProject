/*3. Write an Apex code that store list of 10 Integers 
   - print out all odd numbers
   - get the count of the odd numbers and print it out
   - get the sum of the odd numbers and print it out */

List<Integer> list1 = new List<Integer>{34,67,45,89,96,34,27,97,3,83};

Integer count=0, sum=0;

for(Integer each : list1) {
   if(Math.mod(each,2)==1){
      System.debug(each);
      count++;
      sum+=each; 
   }
}

System.debug('count of odd numbers '+ count); 
System.debug('sum of odd numbers '+ sum); 
