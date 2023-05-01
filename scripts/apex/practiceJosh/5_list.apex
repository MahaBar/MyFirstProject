/**
 A list is an ordered collection of elements that are distinguished by their indices.
 List elements can be of any data type primitive types, collections, subjects, 
 user defined types, and built-in Apex types.
 The index position of the first element in a list is always 0. */

List<Integer> myList = new List<Integer>(); // Define a new List

myList.add(45); // Adds an element of value 45 to the end of the list
myList.add(30);
myList.add(50);
myList.add(30); // duplicate element
System.debug(myList.get(2));  // Retrieves the element at index 0

myList.set(0, 15);
System.debug(myList);

myList.clear();
System.debug(myList);  // Removes all elements from the list



/** 
Define a list of brands of cars
Practice List methods
*/

List<String> cars = new List<String>{'Toyota','BMW','Ford'} ;
System.debug(cars);

cars.add('Mercedes');
cars.add('Honda');
cars.set(1, 'Tesla'); // 1 number 'BMW' (start from 0)
System.debug(cars) ; 

Boolean isHonda = cars.contains('Honda');
System.debug(isHonda);

System.debug(cars.get(3));

cars.clear();
System.debug(cars.isEmpty());
