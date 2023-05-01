Map<String, Decimal> productMap = new Map<String, Decimal>();
productMap.put('Apple Macbook', 1500);
productMap.put('Samsung S60', 700);
productMap.put('apple Airpod', 300);
productMap.put('Apple Iphone 13', 1000);
productMap.put('Samsung Galaxy', 800);

//You have a map of products and you should increase the prices by10% if they include 'Apple'
//print out the new priceMap

for(String each : productMap.keySet()){
    
    if(each.toLowerCase().contains('apple')){
        productMap.put(each, productMap.get(each) * 1.10);
    }

}
System.debug(productMap); 
