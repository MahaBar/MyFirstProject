/**
We can create a Set by copying the content of another set or List
 */


 Set<String> strSet1 = new Set<String>{'item1','item2','item3','item4','item5'};
 System.debug('strSet1 value is : ' + strSet1); 
 // OUTPUT strSet1 value is : {item1, item2, item3, item4, item5}

 // Creating a Set by copying everything inside another Set
 Set<String> strSet2 = new Set<String>(strSet1);
 System.debug('strSet2 value is : ' + strSet2); 
 // OUTPUT strSet2 value is : {item1, item2, item3, item4, item5}


 // Creating a List 
 List<Integer> numberList = new List<Integer>{10,10,20,20,20};
 System.debug('numberList value is : ' + numberList); 
 // OUTPUT numberList value is : (10, 10, 20, 20, 20)

 // Create a Set by copying everything inside a List
 Set<Integer> numberSet = new Set<Integer>(numberList);
 System.debug('numberSet value is : ' + numberSet); 
 // OUTPUT numberSet value is : {10, 20}