/**
4. Write a program that store List of Double with 10 items 
   break out of the loop if any number is between 50.5 and 99.99 
 */
List<Double> itemList = new List<Double>{
  299.99d,
  70.42d,
  7.55d,
  9.99d,
  10.99d,
  51.9d,
  55.09d,
  11.99d,
  77.99d,
  6.99d
};
for(Double each : itemList) {
    System.debug(each);
    if( each > 50.5 && each < 99.99 ){
      break;
  }
}

  
