public class RecursionDemo {
    
    // method instead foor loop 

    // count from N to 1 in this method 
    // and print it out 
    public static void printNumber(Integer n){

        // for(Integer i=n; i>0 ;i--) {
        //     System.debug('i value is : ' + i);
        // }

        System.debug('n value is : ' + n);

        if(n<=1){
            System.debug('we are done');
            return;   
            // return keyword has two purpose 1.return a value   2.with void 'return' means get out (break) from the method
        }

        printNumber(n-1); // calling the method
    }


    //count from 1 to N in this method
    //and print it out
    // public static void printNumber(Integer n){
    //     System.debug('n value is : ' + n);
        
    //     if(n>1){
    //     printNumber(n-1);
    //     }
    // }


}