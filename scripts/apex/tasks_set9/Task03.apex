/**
3. Create a List of 10 String
   - get the count of String even character count
   - print them out
 */

List<String> names = new List<String>{'David', 'Joanna', 'Bob', 
                          'Helen', 'Mickil', 'Josh', 'Rosalia',
                          'Ann', 'Steven', 'Joy'};

Integer count = 0;
for(String each : names) {
   if(Math.mod(each.length(), 2)==0){
      System.debug(each); 
      count++;
   }
}
System.debug(count);
 