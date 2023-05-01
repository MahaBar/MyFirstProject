/**
Create list of 5 Accounts fill it up
insert this into SF
Create Map<Id, Account> and assign the value
fill up this map with Id of each record in the list as key
                The record itself as value
 */

List<Account> accList = new List<Account> ();
accList.add( new Account( Name = 'Cydeo1') );
accList.add( new Account( Name = 'Cydeo2') );
accList.add( new Account( Name = 'Cydeo3') );
accList.add( new Account( Name = 'Cydeo4') );
accList.add( new Account( Name = 'Cydeo5') );

insert accList;  
// Database.insert(accList, false);

// Create Map<Id, Account> and assign the value
// fill up this map with Id of each record in the list as key
// The record itself as value

// Map<Id,Account> accMap = new Map<Id,Account>(accList);
// System.debug('accMap value is : ' + accMap); 

Map<Id,Account> accMap = new Map<Id,Account>();
// putAll(the record List) =>> Map<Id, yoursObjectTypr>
// accMap.putAll(accList) ;
// System.debug('accMap value is : ' + accMap); 



/**
HomeWork:
Get a Map<Id,Account> without using one shot way or putAll method
 */
for(Account eachAccount : accList) {
    accMap.put(eachAccount.Id  , eachAccount);
}
System.debug('accMap value is : ' + accMap); 





















