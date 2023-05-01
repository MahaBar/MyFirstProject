/**
Set is a collection type of unique elements
It`s a unordered collection meaning there is NO index
order is not guaranteed 

.set different same 
NOT .get method in the SET, because no index here
*/

Set<Integer> numberSet = new Set<Integer>();
numberSet.add(10); 
numberSet.add(10); 
numberSet.add(10); 
numberSet.add(10); 
numberSet.add(10); 
numberSet.add(10); 

System.debug('numberSet value is : ' + numberSet); 
// OUTPUT numberSet value is : {10}

// methods:

// size() method :
System.debug('numberSet.size() value is : ' + numberSet.size()); 
// OUTPUT numberSet.size() value is : 1

// clear() method : delete all items in the Set
numberSet.clear();
System.debug('numberSet value is : ' + numberSet); 
// OUTPUT numberSet value is : {}

// isEmpty() : return true if size is 0, return false if not
System.debug('numberSet.isEmpty() value is : ' + numberSet.isEmpty()); 
// OUTPUT numberSet.isEmpty() value is : true

numberSet.add(10);
numberSet.add(20);
numberSet.add(30);
System.debug('numberSet value is : ' + numberSet); 
// OUTPUT numberSet value is : {10, 20, 30}

// contains(valueToCheck) return true if item exist, false if not
System.debug('numberSet.contains(10) value is : ' + numberSet.contains(10)); // true
// OUTPUT numberSet.contains(10) value is : true
System.debug('numberSet.contains(50) value is : ' + numberSet.contains(50)); // false
// OUTPUT numberSet.contains(50) value is : false

// remove(valueToDelete)
// UNLIKE LIST, IT EXPECTS A VALUE NOT INDEX
numberSet.remove(30);
System.debug('numberSet value is : ' + numberSet); 
// OUTPUT numberSet value is : {10, 20}


// YOU CAN NOT LOOP THROUGH SET USING FOR LOOP
// BECAUSE THERE IS NO INDEX
// Code snipper: ForEach
// update the collection name
// hit tab to select data type if needed
for(Integer each : numberSet) {
    System.debug('Current value : ' + each);
}
    










