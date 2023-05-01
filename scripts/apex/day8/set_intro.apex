/**
Set is a type of collection that store unique elements
inlike List. it does not keep insertion order, 
it does not have the idea of position.
format with empty set
Set< DatType > yourVarName = new Set< DatType >() ; 
format no empty
Set< DatType > yourVarName = new Set< DatType >{item1, item2,... itemN} ; 

*/
// declaring and initializing an empty set
Set<Integer> targets = new Set<Integer>() ; 
// adding items into the set using .add method
targets.add(100) ;
targets.add(100) ;
targets.add(100) ;
targets.add(200) ;
targets.add(200) ;
targets.add(200) ;

System.debug(targets) ;
System.debug('count of item is : ' + targets.size() ) ;
// result: removed duplicate value


// Create a Set of String to store 10 item with ,
// single letter for each item
Set<String> letters = new Set<String>{'A','A','A','B','B','B','C','C','C','D'} ; 

// Print out the entire Set
System.debug(letters) ;
// print out the size
System.debug('unique letter counts : ' + letters.size() ) ;
// use for each loop to print out each items
for(String eachLetter : letters ){
    System.debug(eachLetter) ; 
}



