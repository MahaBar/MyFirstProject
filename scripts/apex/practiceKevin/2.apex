/*1. Create a list of Integer named "orderNumbers".
  2. Add numbers between 1-20 into the list. 
  3. Check if the size of the list is 20 and print out the result as "true" or "false"
  4. Print out each number in the list as 'Order Number X' except 5, 10 and 15.
  */
List<Integer> orderNumbers = new List<Integer>();

for(Integer i = 1 ; i <= 20 ; i++){
    orderNumbers.add(i);
}
System.debug('The numbers in the list : ' + orderNumbers);

Integer listSize = orderNumbers.size();
System.debug('The size of the list : ' + listSize);
System.debug('Is list size equals 20 ' + (listSize == 20));

// 1st solution 4task
for(Integer eachNum : orderNumbers){
    if(eachNum != 5 && eachNum != 10 && eachNum != 15 ){
        System.debug('Order Number ' + eachNum);
    }
}
System.debug('*******************');

// 2nd solution
for(Integer eachNum : orderNumbers){
    if(eachNum == 5 || eachNum == 10 || eachNum == 15 ){
        continue;
    }
    System.debug('Order Number ' + eachNum);
  
}

System.debug('*******************');

// 3rd solution
List<Integer> doNotPrint = new List<Integer>{5,10,15};
for (Integer eachNum : orderNumbers){
    if (doNotPrint.contains(eachNum)){
        continue;
    }
    System.debug('Order Number ' + eachNum);
}
