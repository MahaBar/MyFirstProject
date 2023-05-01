/** Akbar
9. Write a program that create a list of strings and print the values that are not equal to "Admin" or "Developer" using a for loop and the continue keyword.
 */
 List<String> roleList = new List<String>();
 roleList.add('Sales Manager'); 
 roleList.add('Developer'); 
 roleList.add('Java SDET'); 
 roleList.add('Java Developer'); 
 roleList.add('Cybersecurity Analyst'); 
 roleList.add('Data Science'); 
 roleList.add('Salesforce Developer'); 
 roleList.add('Salesforce Architect'); 
 roleList.add('Admin'); 
 roleList.add('Marketing Director'); 
 
//  for(Integer i=0; i<roleList.size() ; i++) {
    
//     if( roleList.get(i)=='Admin' ||  roleList.get(i)=='Developer' ){
//        continue ; // mean skipping
//     }

//     System.debug('Value at index #'+ i +' is :' + roleList.get(i) );
//  }

 for(Integer i=0; i<roleList.size() ; i++) {
    
    // create a variable to store each item you are looping through
    String each = roleList.get(i); // inside for loop because we need that variable inside the loop

    if( each=='Admin' ||  each=='Developer' ){
       continue ; // mean skipping
    }

    System.debug('Value at index #'+ i +' is :' + each );
 }


