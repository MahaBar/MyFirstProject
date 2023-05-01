// store many names  -->> List<String>

// store unique names -->> Set<String>

// store student names and score -->> Map<String,Integer>

// store all the groups(that contains many names ) into a collection

// how to represent one group that have many names --> List<String>
// how to represent many groups --> List< List<String> >

List<String> group1Names = new List<String>{ 'Zhamilia','Marina','madina','Vita'};
List<String> group2Names = new List<String>{ 'Ali', 'Hyder', 'Dua', 'Elif' };
List<String> group3Names = new List<String>{ 'Jon', 'Snow', 'Know', 'nothing' };

List<List<String>> groupList = new List<List<String>>{
  group1Names,
  group2Names,
  group3Names
};
System.debug('groupList value is : ' + groupList);




//accessing the item in the list , we use index and it starts from 0 


// what if we want to make it slightly easier to access the group that contains names 


// for example if we provide 1 => (Zhamilia, Marina, madina, Vita)
// for example if we provide 2 => (Ali, Hyder, Dua, Elif)
// for example if we provide 3 => (Jon, nothing)
//  Map<Integer ,  List<String>  >




// for example if we provide group1 ==> (Zhamilia, Marina, Madina, Vita)
// for example if we provide group2 ==> (Ali, Hyder, Dua, Elif)
// for example if we provide group3 ==> (Jon, Nothing)
// Map<String, List<String> >

Account a = new Account(Name='Apex Inc');
insert a ;
// Database.insert(a , false);
a.AnnualRevenue = 900000;
// update a ;

List<Account accList = new List<Account>();
accList.add( new Account(Name='Sample Account 1'));
accList.add(a);
//insert the 'Sample Account 1' and update 'Apex Inc' in Salesforce
upsert accList;

//delete this record
delete accList;

//restore the items that deleted
undelete accList;












