// sObject
// create an account and a related contact
// create a task on account

Account acc1 = new Account(Name = 'Success Company');
acc1.Industry = 'Technology';

insert acc1;

Contact con1 = new Contact(LastName = 'Will');

con1.AccountId = acc1.Id;

insert con1;

Task taskAcc1 = new Task();
taskAcc1.WhatId = acc1.Id;
taskAcc1.Priority = 'High';
taskAcc1.ActivityDate = Date.today() + 5;
taskAcc1.Subject = 'Follow up ' + acc1.Name;

insert taskAcc1;


// customObject
/**
We created a Custom Object as below 
Create Custom Object
   Vehicle 
        Name field make it auto number 
        In this format V-{000}
   Fields 
          Year as a number 
          Model as text 
          Make as text 
          Price as currency
          Contact as Lookup to Contact object 

Now we need to access here in VSCode 
Go to command pallette and type 
SFDX: Refresh Object Definition
select All object 
now you have access to latest changes you made under Object manager 

 */

// Create a contact with LastName
// insert into SF


Contact con = new Contact(LastName = 'Stan');

insert con;

Vehicle__c  v1 = new Vehicle__c(Make__c = 'BMW', Model__c = 'X3', Year__c = 2022, Price__c = 65000);

v1.Contact__c = con.Id;

insert v1;


// map
Map<String,Integer> nameNumber = new Map<String,Integer>{'Josh' => 1, 'Ben' => 2, 'Mary' => 3};

System.debug(nameNumber);

// Set<String> allKeys = nameNumber.keySet();

List<Integer> allValues = nameNumber.values();

// System.debug(allKeys);
System.debug(allValues);

for(String eachKey : nameNumber.keySet()){

    System.debug('Key is ' + eachKey);      //key
    System.debug('Value is ' + nameNumber.get(eachKey));    // value
}



// task11_4
/*
4. Given below Map 
   
   Map<Integer, String> romanNumerals = new Map<Integer, String>{
        1 => 'I',
        2 => 'II',
        3 => 'III',
        4 => 'IV',
        5 => 'V'};
    
   - Create a new Map<String, Integer> 
   - store the key into the value of above Map
   - store the value into the key of above map
   - print result should be {I=1,II=2,III=3,IV=5,V=5}
*/

Map<Integer, String> romanNumerals = new Map<Integer, String>{1 => 'I', 2 => 'II', 3 => 'III', 
                                                              4 => 'IV',5 => 'V'};

Map<String,Integer> numRomans = new Map<String, Integer>();

for(Integer eachKey : romanNumerals.keySet()){                  // 1, 2, 3, 4, 5

    numRomans.put(romanNumerals.get(eachKey), eachKey);         // I, 1     II, 2       III, 3
}

System.debug(numRomans);

/*
Set<Integer> nums = romanNumerals.keySet();

List<String> romans = romanNumerals.values();
*/




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
