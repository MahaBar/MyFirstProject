/**
8.  Map Practice : MapShare (NO LOOP NEEDED)
   -  Given A Map with key values in it with a.b,c as key and String as values
   -  for example : {'a'=>'candy', 'b'=>'dirt','c'=>'cccc'}
   -  if the key a has a value 
      -  set the key b to have the same value
   -  in all cases remove key c leaving the rest of the map unchanged 
   -  so final print result according to this logic will be
   -  updated Map : {a=candy, b=candy}
   -  for example : {'b'=>'dirt','c'=>'cccc'} , print the result will be
      -  updated Map : {b=candy}
   -  for example : {'a'=>'aaa', 'c'=>'meh','d'=>'hi'} , print result
      -  updated Map : {a=aaa, b=aaa, d=hi}
*/

Map<String,String> mapShare = new Map<String,String>{ 'a'=>'candy', 'b'=>'dirt', 'c'=>'cccc'};

if(mapShare.get('a')!= null){
   mapShare.put('b', mapShare.get('a'));
   mapShare.remove('c');
}
System.debug(mapShare); 
