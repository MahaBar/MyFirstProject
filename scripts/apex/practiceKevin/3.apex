List<String> accountNames = new List<String>{'Ford','DreamHouse', 'CloudKicks', 'Tesla', 'Hotwheels', 'Ford', 'Sony', 'Disney', 'Tesla', 'Sony', 'CloudKicks'};

System.debug(accountNames.size());
//2. Add an account name 'Starbucks' to the first index of the list. Print out the list and its size.
accountNames.add(0,'Starbucks');
System.debug(accountNames);
System.debug(accountNames.size());

//3. Replace the first account name in the list with value 'Panera Bread'. Print out the new list and its size.

accountNames.set(0, 'Panera Bread');
System.debug(accountNames);
System.debug(accountNames.size());

//4.Add the number 50 to the list as an Integer datatype??? Print out the new list??? 
//accountNames.add(50);

//5. Print out only the first element/item in the list. 
System.debug('The first element  in the list is: '+ accountNames.get(0));
/*6. Find out how many unique names showed up in the list by creating a Set.
    a. Create an empty Set of String 
    b. Iterate over names List using for each loop
    c. use add method of Set to add each items into Set
    d. outside the loop print out the set and the size of the set*/

Set<String> accountNamesSet = new Set<String>();

for (String eachName : accountNames){
    accountNamesSet.add(eachName);
}

System.debug(accountNamesSet);
System.debug(accountNamesSet.size());

accountNamesSet.add('Disney');
System.debug(accountNamesSet.size());

accountNamesSet.remove('Sony');
System.debug(accountNamesSet.size());

accountNamesSet.clear();
System.debug('Is the accountNamesSet empty: ' + accountNamesSet.isEmpty());