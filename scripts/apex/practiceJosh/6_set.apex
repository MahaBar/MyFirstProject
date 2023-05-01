/** 
DEfine a set of prices
Practice for each loop
*/

Set<Decimal> prices = new Set<Decimal>{4.88,9.99,5.21,4.99};
prices.add(0.99);
prices.add(4.88);
System.debug(prices);

Decimal sum = 0; 

for(Decimal eachPrices : prices){  
    //sum = sum + eachPrices;
    sum += eachPrices; // shortcut
}
System.debug('Total is ' + sum);