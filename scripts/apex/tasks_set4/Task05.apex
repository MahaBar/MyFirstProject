/** Task 5 Josh
Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
*/
List<String> nameList = new List<String>{'Jon','Mike','Mary','Bj','Mike','Pol','Ann','Jon','Bj','Steff'};

// 1. create an empty Set of String
Set<String> nameSet = new Set<String>() ; 
// System.debug(nameSet.size());
System.debug(nameList.size());

// 2. Iterate over names List using for each loop
for(String eachName : nameList){
    System.debug(eachName) ; 
    nameSet.add(eachName) ;  // 3. use add method
}
System.debug(nameSet);

// 4. outside the loop print out the size of set
System.debug('Size of set ' + nameSet.size()) ;
