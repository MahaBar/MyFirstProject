/**
7. Map Practice : MapBully (NO LOOP NEEDED)
   -  Given A Map with key values in it with a.b,c as key and String as values
   -  for example : {'a'=>'candy', 'b'=>'dirt'}
   -  Follow below requirement to update the Map 
   -  if the key a has a value (not null), 
      -  set the key b to have that value
      -  and set the a to have value nothing 
      -  basically b is a bully , taking the value and replacing it with the nothing.
   -  You should get this result {a=nothing,b=candy}
   -  another example , map with below value should get updated as below
   -  {'a' => 'candy'}  should be updated to this when you print 
      -  updated Map : {a=nothing,b=candy}
   -  another example , map with below value should get updated as below
   -  {'a'=>'candy', 'b'=> 'carrot', 'c': 'meh'}
      -  updated map : {a=nothing,b=candy,c=meh} 

 */

Map<String,String> mapBully = new Map<String,String>{ 'a'=>'candy', 'b'=>'dirt'};

if(mapBully.get('a')!= null){
   mapBully.put('b', mapBully.get('a'));
   mapBully.put('a', 'nothing');
}
System.debug(mapBully); 

Map<String,String> newMapBully = new Map<String,String>();
newMapBully.putAll(mapBully);
newMapBully.put('c', 'meh');
System.debug(newMapBully); 