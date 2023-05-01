/**
Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers) 

   print out the sum of positive numbers 
   print out the count of positive numbers 
   print out the count of negative numbers 
*/

List<Long> longNumbers = new List<Long>{48880088L,
                                1660000666L,
                                5555505055L,
                                -333444333L,
                                6666666666L,
                                3033333333L,
                                -1111111111L,
                                -3400004444L,
                                9997777777L} ;


// print out the sum of positive numbers
Long sumPosNums = 0 ; 
for (Long eachNum : longNumbers ){
   if(eachNum >= 0)
   sumPosNums += eachNum ;
}
System.debug('sum of positive numbers is : ' + sumPosNums) ; 


// print out the count of positive numbers
// print out the count of negative numbers
Integer countPositive = 0 ; 
Integer countNegative = 0 ; 
for(Long eachNum : longNumbers){
   if(eachNum >= 0){
      countPositive ++ ;
   }else{
      countNegative ++ ;
   }
}
System.debug('Count of positive numbers : ' + countPositive) ;
System.debug('Count of negative numbers : ' + countNegative) ;


