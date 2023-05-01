/**
1. Create a Map<String, Integer> to store group name and member count
   -  Add 5 items into this Map 
   -  Check if there is a group called Apex Soldiers 
      -  print out the result in boolean 
   -  Check if there is a group called Winterfell Vacation
      -  if so , store the value into a Variable called vMemberCount
         -  remove this group from the map 
         -  add new item to the map with below key-value pair
            -  Winterfell Coders as key , value of vMemberCount as value
   -  Check if there is a group with 10 members
      -  if so , decrease the value to 9 
 */

Map<String,Integer> groups = new Map<String,Integer>{'Apex Soldiers' => 8, 'Apex 1' => 10, 'SF' => 7, 
                                                      'Winterfell Vacation' => 9, 'TDX' => 12};
System.debug('my map ' + groups); 

Boolean isThereApex = groups.containsKey('Apex Soldiers');
System.debug('Is There Apex Soldiers : ' + isThereApex); 

Integer vMemberCount = 0;
if(groups.containsKey('Winterfell Vacation')){
   vMemberCount = groups.get('Winterfell Vacation');
   System.debug(vMemberCount); 
      groups.remove('Winterfell Vacation');
      groups.put('Winterfell Coders', vMemberCount);
}
System.debug('group memebers value is : ' + groups);

for(String eachGroup : groups.keySet()){
   if(groups.get(eachGroup) == 10){
      groups.put(eachGroup, 9);
   }
}
System.debug('group memebers value is : ' + groups);
