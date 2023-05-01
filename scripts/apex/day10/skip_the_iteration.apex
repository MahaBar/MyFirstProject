/**
 Imagine you are the teacher and you have 10 kids 

 You are giving treat to all the kids expect the trouble maker by going through each and every kid , you skip the kid that is trouble maker while distributing the treat and continue with the next one. 

 That's what continue keyword does in the loop

 */

/**
Sometimes we want to skip certain iteration if certain
condition met when we are inside the loop

continue keyword can be used to skip the iteration
and jump to next iteration

 */

 // count from 1 to 10 and print 
 // skip 5 while counting

//   for(Integer count=1 ; count<=10 ; count++) {
    
//     if(count!=5){
//         System.debug('count value ' + count);
//     }
//  }

 for(Integer count=1 ; count<=10 ; count++) {
    
    if(count==5){
        System.debug('skiping the rest of in this iteration');
        continue ; // jumping to the next iteration
    }
    System.debug('count value ' + count);
    
 }


 /**
 Create List of Integer with couple items
 Iterate over each items and print the number
 skip when you see any number that more than 10
  */
List<Integer> numLst = new List<Integer>{19,1,23,4,6,99};
// for( Integer eachNum : numLst ){

//     if(eachNum <= 10){
//         System.debug(eachNum);
//     }
// }

for( Integer eachNum : numLst ){

    if(eachNum > 10){
        continue ; 
     }
    
    System.debug(eachNum);
}