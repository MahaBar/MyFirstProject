/**
6. Write a program that create a Map<String, Integer>  with 9 values
   - Create a new map that contains only the keys and values where the value is greater than 10 from first Map.

 */

Map<String, Integer> myMap1 = new Map<String, Integer>();
myMap1.put('a', 4);
myMap1.put('b', 3);
myMap1.put('c', 10);
myMap1.put('d', 48);
myMap1.put('e', 9);
myMap1.put('f', 6);
myMap1.put('g', 11);
myMap1.put('h', 21);
myMap1.put('g', 1);
System.debug(myMap1); 

Map<String, Integer> myMap2 = new Map<String, Integer>();
for(String eachChar : myMap1.keySet()) {
  if(myMap1.get(eachChar) > 10){
       myMap2.put(eachChar, myMap1.get(eachChar)) ; 
  }
  System.debug('My map 2 value is : ' + myMap2); 
}
  