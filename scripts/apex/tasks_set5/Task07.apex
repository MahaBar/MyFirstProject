/** Akbar
7. Write a program that create List of Integer with 10 items 
    get the count of the items more than 5 and 
    break out of the loop if you found 2 numbers that 
    more than 5
 */

List<Integer> numberList = new List<Integer>{1,4,6,21,95,17,3,8,4,46}; 

Integer count = 0 ;

for(Integer each : numberList) {
    System.debug('Current value : ' + each);
    if(each > 5){
        count++ ; 
    }
    if( count == 2 ){           // not 'else' because that is separate condition
        break;
    }
}
System.debug('count value is : ' + count); 