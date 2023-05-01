/**
You can copy all items from one map to another easily 
either while the map is being created or afterward 

 */

 Map<String, Decimal> priceMap = new Map<String, Decimal>{
                                                        'Apple' => 5.75,
                                                        'Orange' => 4.99,
                                                        'Grape' => 8.99,
                                                        'Strawberry' => 10.59,
                                                        'Banana' => 2.5
                                                   };
System.debug('priceMap value is : ' + priceMap); 
// create another map and copy everything from above map 
Map<String, Decimal> priceMapCopy = new Map<String, Decimal>(  priceMap  ); 
System.debug('priceMapCopy value is : ' + priceMapCopy); 


// create another empty map, add all the items from the 1st map  
Map<String, Decimal> priceMapCopy2 = new Map<String, Decimal>();
priceMapCopy2.putAll(priceMap);
System.debug('priceMapCopy2 value is : ' + priceMapCopy2); 