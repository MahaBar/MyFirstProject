/**
List is a collection type that store element in insertion order
each and every element are stored in a position that start with 0
for example if you have below list
// human count                     item  1  2  3 4 5 6
List<Integer> numLst = new List<Integer>{19,1,23,4,6,99};
// machine count (in computer)    index  0  1  2 3 4 5 
 */

 List<Integer> numLst = new List<Integer>{19,1,23,4,6,99};

 // get the element at certain index using get method

 // get the first element and store it in a variable
 Integer item1 = numLst.get(0) ;
 System.debug('first item value ' + item1) ; 

 // directly print out the second value using get method
 System.debug('second item value ' + numLst.get(1));

 System.debug(numLst.get(2)); 
 System.debug(numLst.get(3)); 
 System.debug(numLst.get(4)); 
 System.debug(numLst.get(5)); 
     
 System.debug(numLst) ;



 System.debug('--------------------------------'); 
 // iterate over all the elements in the loop withiut for each loop

 for(Integer index = 0 ; index < 6; index++ ){
    System.debug(numLst.get(index)) ;
 }

 