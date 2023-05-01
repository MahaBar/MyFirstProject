// Create a priceMap, productName, price
                // add 5 items
                // use all the methods we learned above
// Map<String,Decimal> priceMap = new Map<String,Decimal>();
// pricemap.put('Apple', 5.75);
// pricemap.put('Orange', 4.99);
// pricemap.put('Grape', 8.99);
// pricemap.put('Strawberry', 10.59);
// pricemap.put('Banana', 2.5);

// Creating Map with value filled up already
map<String,Decimal> priceMap = new map<String,Decimal>{
                                            'Apple'     => 5.75,
                                            'Orange'    => 4.99,
                                            'Grape'     => 8.99,
                                            'Strawberry'=> 10.59,
                                            'Banana'    => 2.5
                                            };

System.debug('pricemap value is : ' + pricemap);
// pricemap value is : {Apple=5.75, Banana=2.5, Grape=8.99, Orange=4.99, Strawberry=10.59}


// check if this map  contains Mango, if not then add Mango => 6.99
if( ! priceMap.containsKey('Mango') ){
    priceMap.put('Mango', 6.99);
}
System.debug('priceMap value is : ' + priceMap); 

// if Banana price is greater than 2 ==> update it to 1.99
if(priceMap.get('Banana')>2){
    priceMap.put('Banana', 1.99);

}
System.debug('priceMap value is : ' + priceMap); 


// keySet() method , return all the keys in Set<YourKeyDataType>
Set<String> allKeys = priceMap.keySet();
System.debug('allKeys value is : ' + allKeys); 
// allKeys value is : {Apple, Banana, Grape, Mango, Orange, Strawberry}


// Iterate over (loop through) each key and print it out
for(String eachKey : allKeys) {
    System.debug('Current key : ' + eachKey);
    System.debug('Value of this key ' + priceMap.get(eachKey));
    System.debug('------------------');
}
    

// values() method , return all the values in List<YourValueDataType>
List<Decimal> priceList = priceMap.values();
System.debug('priceList value is : ' + priceList);  




































