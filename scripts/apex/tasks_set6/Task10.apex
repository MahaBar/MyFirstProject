/**
10. Create a Array of 10 Integers 
  - print 'ideal numbers' if it contains both 10 and 5 
  - print 'Good numbers' if it contains 10 
  - print 'Ok numbers' if it contains 5
  - print 'Not so Good numbers' if it does not contain 10 and 5
 */
Integer[] numbers = new Integer[10];
numbers[0] = 22;
numbers[1] = 11;
numbers[2] = 43;
numbers[3] = 9;
numbers[4] = 11;
numbers[5] = 22;
numbers[6] = 5;
numbers[7] = 2;
numbers[8] = 42;
numbers[9] = 22;

for(Integer each : numbers) {
    if( numbers.contains(10) && numbers.contains(5) ){
        System.debug('ideal numbers'); 
    }
    if( numbers.contains(10) ){
        System.debug('Good numbers'); 
    }
    if( numbers.contains(5) ){
        System.debug('Ok numbers'); 
    }
    if( !(numbers.contains(10) && numbers.contains(5)) ){
        System.debug('Not so Good numbers'); 
    }
}
    