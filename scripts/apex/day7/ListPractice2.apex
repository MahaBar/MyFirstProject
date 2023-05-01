/**
Declare a List of Integer variable and initialize it`s value (empty)
Fill up the list with 100 items, starting with 1 ----> 100
*/

List<Integer> numberList = new List<Integer>() ;

for(Integer count=1 ; count<=100 ; count++){
    numberList.add(count) ;
}
System.debug(numberList) ;
// get the size of the list using size method of the List
System.debug(   numberList.size()    ) ;

// Create a List of Integer and store 15 items
// all item value should be 10 ;
// here is the content of the list
// 10, 10, 10, 10, 10, 10, 10, 10, 10,10, 10, 10, 10, 10 (15 time)
List<Integer> voteNumbers = new List<Integer>() ; 
for(Integer count=1 ; count<=15 ; count ++ ){
    voteNumbers.add(10) ;
}
System.debug(voteNumbers) ; 
 

// for(Integer count=10 ; count<=25 ; count++){
//     System.debug('Hello World') ; 
// }



// How to count the item inside the list
// so we got the number
// size() method of List
Integer voteCount = voteNumbers.size() ; // store how many 

System.debug( voteCount  ) ;

// or you can directly print it out without saving
System.debug( voteNumbers.size() ) ; 