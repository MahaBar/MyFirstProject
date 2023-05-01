/**
Declare and initialize variable muffin
Countdown from 20 -> 0 decrease by 2

// if the number is greater than 10
    // print out muffin count is XX
// else
    // print out muffin count is XX , I am getting full
 */

 Integer muffin = 20 ;

//  while(muffin >= 0){
    
//     if(muffin > 10){
//         System.debug('muffin count is ' + muffin) ;
//     }else{
//         System.debug('muffin count is ' + muffin + 
//                     ' I am getting full ') ;
//     }

//     muffin -=2 ; // or muffin = muffin -2 ;
//  }


/**
Declare and initialize variable muffin
Countdown from 20 -> 0 

// if the number is greater than 10
    // print out first half : muffin count is XX
    // decrease the muffin by 3
// else
    // print out second half : muffin count is XX
    // decrease the muffin by 2
 */

// while(muffin>=0){

//     if(muffin > 10){
//         System.debug('first half : muffin count is ' + muffin) ;
//         muffin -=3 ;    
//     }else{
//         System.debug('second half : muffin count is ' + muffin) ;
//         muffin -=2 ;
//     }

// }


do{

    if(muffin > 10){
        System.debug('first half : muffin count is ' + muffin) ;
        muffin -=3 ;    
    }else{
        System.debug('second half : muffin count is ' + muffin) ;
        muffin -=2 ;
    }

}while(muffin>=0) ;







