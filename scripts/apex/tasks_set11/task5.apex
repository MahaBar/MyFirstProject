/**
5. Create a Map<Integer, String> and fill it up with 5 key-value pairs
   -  Get the sum of All the Keys 
   -  Join all the values by , and print it out 

 */

Map<Integer, String> myMap = new Map<Integer, String>();
myMap.put(1, 'banana');
myMap.put(2, 'apple');
myMap.put(3, 'mango');
myMap.put(4, 'pear');
myMap.put(5, 'peach');
System.debug(myMap); 

Integer sum = 0;
List<String> myMapValues = myMap.values();

for(Integer i=0; i<myMapValues.size() ;i++) {
  sum+=i;
}
System.debug('Sum is : ' + sum);
System.debug('Joined value is : ' + string.join(myMapValues, ',')); 