Map<String,Integer> nameNumber = new Map<String,Integer>{'Josh' => 1, 'Ben' => 2, 'Mary' => 3};

System.debug(nameNumber);

Set<String> allKeys = nameNumber.keySet();

List<Integer> allValues = nameNumber.values();

System.debug(allKeys);
System.debug(allValues);

for(String eachKey : allKeys){

    System.debug('Key is ' + eachKey);  // key
    System.debug('Value is ' + nameNumber.get(eachKey));
}
