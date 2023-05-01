/*4. Write an Apex code that create List or Array of 10 String values
   - create a empty Set of String 
   - store all the string that is not equal to admin or developer in it
   - print out the size and items in loop  */

List<String> strList = new List<String>{
  'Admin',
  'Architect',
  'Tester',
  'QA',
  'Analyst',
  'Developer',
  'App Builder',
  'PO',
  'Scrum Master',
  'Consultant'
};

Set<String> strSet =new Set<String>();

for(String each : strList) {
  if(each!='Admin'&& each!='Developer')
strSet.add(each);
}

System.debug('size of the set: '+ strSet.size());

for(String each : strSet) {
  System.debug(each);
}