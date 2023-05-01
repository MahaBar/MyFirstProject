/*
1. Create a list of names and
Use for each loop to iterate each name
Retrieve 3rd name by using get(index) method
Use for loop to iterate each name by index
Skip the iteration of for each loop if you encounter name 'Josh'
*/

List<String> names = new List<String> {'Kanymgul', 'Madina', 
                            'Andrei', 'Ali', 'Makhabbat', 
                            'Vita', 'Zhamilia', 'Nilufar', 
                            'Josh', 'Marina', 'Denise', 
                            'Busra', 'Gozde'};
for(String eachName  : names ){
    System.debug(eachName) ; 
}

System.debug('*********************************');

String retrievedName = names.get(2);
System.debug(retrievedName);

System.debug(names.size());
System.debug(names.get(12));

System.debug('*********************************');

for(Integer index = 0 ; index < names.size() ; index++ ){ //13
    System.debug(names.get(index));
}

System.debug('*********************************');







