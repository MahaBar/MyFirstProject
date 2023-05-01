/**
1. Write an Apex code to create an empty List of Strings 
and add 3 names to it using add() method. then insert 3 more items at index number 1
 - print them out using both for loop or for each loop
*/
List<String> nameList = new List<String>();
nameList.add('Jon');
nameList.add('Abby');
nameList.add('Kevin');
System.debug(nameList);

nameList.add(1, 'Lary');
nameList.add(1, 'Tom');
nameList.add(1, 'Lila');
System.debug(nameList); 

for(String each : nameList) {
    System.debug('Current value : ' + each);
}
    
for(Integer i=0; i<nameList.size() ;i++) {
    System.debug(nameList.get(i)); 
}