/**
Create a List of 10  Decimal numbers
in 2 separate loop

in first loop
iterate over the list and print out the each item
skip (continue) item number 3 and 7 while printing (when we see specific number 
we need to chose 'for loop' its easy)

in second loop
iterate over the list and print out the each item
break out of the loop if the number is more than 100
 */
List<Decimal> numbers = new List<Decimal> {1.11,
                                        22.22,
                                        100.99,
                                        3.33,
                                        14.44,
                                        200.00,
                                        12.50,
                                        8.88,
                                        9.99,
                                        50.00
                                        };

// print out the last item value without hard coding
// 1. first get the last item index, it's always 1 less than item count
Integer indexOfLastItem = numbers.size() -1 ;
System.debug('index Of Last Item ' + indexOfLastItem);
// 2. then print out the last item value using get method
System.debug('last item value ' + numbers.get(indexOfLastItem)) ; 

// in first loop
// iterate over the list and print out the each item
// skip (continue) item number 3 and 7 while printing (when we see specific number 
// we need to chose 'for loop' its easy)
for(Integer index=0 ; index< numbers.size() ; index++ ){
    // item   3 or       7
    if(index==2 || index==6){
        continue ; 
    }
    System.debug('Index #' +index + ' : ' + numbers.get(index)  ) ; 
}


// in second loop (for each loop)
// iterate over the list and print out the each item
// break out of the loop if the number is more than 100
for(Decimal eachNum : numbers){

    if(eachNum>100){
        break ;
    }
    System.debug(eachNum) ;

}

