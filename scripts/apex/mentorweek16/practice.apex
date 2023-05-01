//Question 1:
Map<String, Integer> map1 = new Map<String, Integer>{'a' => 1, 'b' => 2, 'c' => 3};
Map<String, Integer> map2 = new Map<String, Integer>{'b' => 3, 'c' => 4, 'd' => 5};
Set<String> commonKeys = new Set<String>(map1.keySet());
commonKeys.retainAll(map2.keySet());
Integer sum = 0;
for (String key : commonKeys) {
    sum += map1.get(key) + map2.get(key);
}
System.debug(sum);

//Question 2:
List<String> colors = new List<String>{'red', 'green', 'blue', 'yellow'};
List<String> newColors = new List<String>();
for (Integer i = 0; i < colors.size(); i++) {
    newColors.add(colors.get(i));
    if (i == 1) {
        newColors.add('orange');
        newColors.remove(i);
        newColors.add(i, 'purple');
    }
}
System.debug(newColors); 

//Question 3:
List<String> fruits = new List<String>{'apple', 'banana', 'cherry', 'date', 'elderberry'};
Map<String, Integer> fruitLengths = new Map<String, Integer>();
for (String fruit : fruits) {
    fruitLengths.put(fruit, fruit.length());
}
System.debug(fruitLengths.get('pear'));

//Question 4:
List<String> lst = new List<String>{'apple', 'banana', 'cherry', 'date'};
Integer num = 3;
System.debug(lst[num - 1].substring(0, 3));

//Question 5:
Map<String, String> map1 = new Map<String, String>{'a' => 'apple', 'b' => 'banana', 'c' => 'cherry'};
Map<String, String> map2 = new Map<String, String>{'a' => 'apricot', 'd' => 'date', 'c' => 'coconut'};
map1.putAll(map2);
System.debug(map1.get('a') + ', ' + map1.get('b') + ', ' + map1.get('c') + ', ' + map1.get('d'));
Questions
//Question 6:
List<String> names = new List<String>{'Alice', 'Bob', 'Charlie', 'David', 'Eva'};
for (Integer i = 0; i < names.size(); i++) {
    if (Math.mod(i, 2) == 0) {
        names.remove(i);
    }
}
System.debug(names);

//Question 7:
Map<String, Integer> map1 = new Map<String, Integer>{'a' => 1, 'b' => 2, 'c' => 3};
Map<String, Integer> map2 = new Map<String, Integer>{'b' => 2, 'c' => 3, 'd' => 4};
Map<String, Integer> difference = new Map<String, Integer>();
for(String key : map1.keySet()){
    if(!map2.containsKey(key) || map1.get(key) != map2.get(key)){
        difference.put(key, map1.get(key));
    }
}
System.debug(difference.keySet());

//Question 8:
Set<String> names = new Set<String>{'John', 'Sarah', 'Michael', 'Chris'};
List<String> sortedNames = new List<String>(names);
sortedNames.sort();
system.debug(sortedNames[1]);

//Question 9:
Map<Integer, String> myMap = new Map<Integer, String>{
    1 => 'one',
    2 => 'two',
    3 => 'three'
};
List<String> myValues = myMap.values();
system.debug(myValues.get(2));

//Question 10:
List<Integer> numbers = new List<Integer>{1, 2, 3, 4, 5};
List<Integer> results = new List<Integer>();
for (Integer each : numbers) {
    if (Math.mod(each, 2) == 0) {
        results.add(each * 2);
    }
}
system.debug(results.size());
Map Practice
Map<String, String> employeeMap = new Map<String, String>();
employeeMap.put('Ddene', 'F');
employeeMap.put('Winfred', 'M');
employeeMap.put('Jereme', 'M');
employeeMap.put('Glad', 'F');
employeeMap.put('Desirae', 'F');

//  1. Update the 'M' to Male and 'F' to Female

for (String each : employeeMap.keySet()) {

  if (employeeMap.get(each).equalsIgnoreCase('F'))
    employeeMap.put(each, 'Female');
    
  else if (employeeMap.get(each).equalsIgnoreCase('M'))
    employeeMap.put(each, 'Male');
}

System.debug(employeeMap);
 
Map<String, Decimal> productMap = new Map<String, Decimal>();
productMap.put('Apple Macbook', 1500);
productMap.put('Samsung S60', 700);
productMap.put('apple Airpod', 300);
productMap.put('Apple Iphone 13', 1000);
productMap.put('Samsung Galaxy', 800);

//You have a map of products and you should increase the prices by10% if they include 'Apple'
//print out the new priceMap

for (String each : productMap.keySet()) {
  if (each.toLowerCase().contains('apple')) {
    productMap.put(each, productMap.get(each) * 1.1);
  }
}

System.debug(productMap);
