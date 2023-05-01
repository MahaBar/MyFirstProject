/**
2. Write a program that store List of long with 10 items with positive and negative numbers and print out all positive values using for loop try using the continue instead.
 */
List<Long> numLongList = new List<Long>{
  38888888880L,
  39999999999L,
  -3999955555L,
  222222222222L,
  -6517777077L,
  98888888808L,
  -5444444440L,
  33333333333L,
  -28888888888L,
  71111111111L
};
for (Long each : numLongList) {
  if (each > 0) {
    System.debug('Positive number is : ' + each);
    continue;
  }
}
