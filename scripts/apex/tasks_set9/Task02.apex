/**
2. Create a List of 10 String
   - get the count of String with more than 5 characters
   - print them out
 */
 List<String> names = new List<String>{'David', 'Joanna', 'Bob', 
                          'Helen', 'Mickil', 'Josh', 'Rosalia',
                          'Ann', 'Steven', 'Joy'};

 Integer count = 0;
 for(String each : names) {
    if(each.length()>5)
      count++;
 }
 System.debug('count value is : ' + count); 
      


  