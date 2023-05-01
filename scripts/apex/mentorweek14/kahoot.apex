//Question 2:
Account a = new Account(Name='Test Account');
insert a;
System.debug('New account ID: ' + a.Id);
delete a;
System.debug('Deleted account ID: ' + a.Id);


//Question 3: 
Map<String, Integer> myMap = new Map<String, Integer>{'a' => 1, 'b' => 2, 'c' => 3}; 
Map<String, Integer> newMap = myMap.clone(); 

newMap.put('d', 4); 
myMap.remove('a'); 

System.debug('myMap: ' + myMap); 
System.debug('newMap: ' + newMap);

//Question 4:
Map<String, String> myMap1 = new Map<String, String>{
    'strVal' => 'hello',
    'intVal' => '42',
    'boolVal' => 'true'
};

Boolean boolVal = Boolean.valueOf(myMap1.get('boolVal'));
String strVal = myMap1.get('strVal');
Integer intVal = Integer.valueOf(myMap1.get('intVal'));

System.debug('boolVal: ' + boolVal);
System.debug('strVal: ' + strVal);
System.debug('intVal: ' + intVal);

//Question 5:
Map<String, String> myMap = new Map<String, String>{
    'a' => 'apple',
    'b' => 'banana',
    'c' => 'cherry'
};

Map<String, String> myMap2 = myMap.clone();
myMap2.put('a', 'apricot');

System.debug('myMap: ' + myMap);
System.debug('myMap2: ' + myMap2);

//Question 6:
Map<String, Integer> myMap = new Map<String, Integer>{
    'A' => 1,
    'B' => 2,
    'C' => 3
};

myMap.remove('B');
myMap.put('A', 4);
myMap.put('D', 5);

System.debug('myMap: ' + myMap);

//Question 7:
Map<String, Integer> myMap1 = new Map<String, Integer>{
    'A' => 1,
    'B' => 2,
    'C' => 3
};

Map<String, Integer> myMap2 = new Map<String, Integer>{
    'A' => 4,
    'D' => 5
};

myMap1.putAll(myMap2);

System.debug('myMap1: ' + myMap1);

//Question 8:
List<String> myStrings = new List<String>{'apple', 'banana', 'cherry', 'date'};

Map<String, Integer> myMap = new Map<String, Integer>();

Integer i = 0;

while (i < myStrings.size()) {      
    myMap.put(myStrings[i], i);
    i++;
}

System.debug('myMap: ' + myMap);