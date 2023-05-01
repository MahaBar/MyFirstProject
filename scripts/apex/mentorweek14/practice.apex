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
map
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