/* Josh
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

for(Integer eachKey : romanNumerals.keySet()){

    numRomans.put(romanNumerals.get(eachKey), eachKey);

}
System.debug(numRomans);

