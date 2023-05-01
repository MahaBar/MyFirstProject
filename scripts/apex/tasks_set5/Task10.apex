/** Akbar
10. Write a program that create a list of strings with 10 values and get the count of the items that are not equal to "Admin" or "Developer" using a for loop and the continue keyword.
 */
 List<String> roleList = new List<String>();
 roleList.add('Java SDET'); 
 roleList.add('Java Developer'); 
 roleList.add('Cybersecurity Analyst'); 
 roleList.add('Developer'); 
 roleList.add('Data Science'); 
 roleList.add('Salesforce Developer'); 
 roleList.add('Admin'); 
 roleList.add('Salesforce Architect'); 
 roleList.add('Sales Manager'); 
 roleList.add('Marketing Director');

 Integer count = 0 ;

//  for(Integer i=0; i<roleList.size() ; i++) {
//     // System.debug('Value at index #'+ i +' is :' + roleList.get(i) );    not need to print

//     String each = roleList.get(i); //Admin
        // false    ||    //true      result is true
//     if(each=='Admin' || each=='Developer'){
//         continue; // skip the rest of the code and go to the next iteration
//     }      
//     count++;
//  }
//  System.debug('count value is : ' + count); 

for(Integer i=0; i<roleList.size() ; i++) {
    // System.debug('Value at index #'+ i +' is :' + roleList.get(i) );    not need to print

    String each = roleList.get(i); 
    if(  !(each=='Admin' || each=='Developer')  ){
        count++;
    }       
 }
 System.debug('count value is : ' + count); 