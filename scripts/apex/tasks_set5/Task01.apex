/** Akbar
1. Write a program than create List of Double with 10 elements 
   print out the first value and last value of the list 
   if first item and last item values are equal 
   print : "end with what we started" 
   else print "different beginning and ending" 
    HINT : No Loop Needed Here
 */
 
 List<Double> priceList = new List<Double>{
  77.207d,
  20.028d,
  27.517d,
  39.274d,
  36.586d,
  77.27d,
  2.028d,
  28.817d,
  139.74d,
  16.5d
};
 
 // how to read first value from the list
 Double firstItem = priceList.get(0);

 // how to read last value from the list
 Double lastItem = priceList.get( priceList.size()-1 ); // - 1 because in human language we need to 1 less

 if(firstItem == lastItem){
   System.debug('end with what we started'); 
 }else{
   System.debug('different beginning and ending'); 
 }
