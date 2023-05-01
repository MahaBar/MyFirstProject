/**
For each loop is specifically used to
Iterate over (loop through) each and every item
inside Collection like (List, Set)

format
for ( DataType eachItem : yourCollectionVariable your list ){
    // do what you want to do with each item
}
*/

List<Integer> numbersList  = new List<Integer>{5,7,4,9,6} ;
// print out the size of this list
System.debug('Item count: ' + numbersList.size() ) ;

for( Integer each : numbersList ){
    System.debug(each) ;
}

// here is how you would do iy in one shot
// List<String> roles = new List<String>{'clock-master', ...};

// Create a List of String and add 4 items in
// use for each loop to iterate over them print it out
List<String> roles = new List<String>();
roles.add('clock-master');
roles.add('screenshot-master');
roles.add('karate-girl');
roles.add('type-master');
// use for each loop  to iterate ver each item and print
for(String eachRole : roles ){
    System.debug('Current Role: ' + eachRole) ;
}

// Crete a List of Decimal and add 6 value in it
// iterate over each item and print it out
List<Decimal> prices 
        = new List<Decimal>{9.99, 2.59, 3.14, 9.9, 10.5};
for( Decimal eachPrice : prices ){
    System.debug('Price is: ' + eachPrice) ;
}


// optionally, create a variable outside of your loop called sum
// then use your for each loop to get the sum of all decimal numbers
Decimal sum = 0 ; // sum - mean null and empty, not zero

for(Decimal eachPrice : prices ){
    // sum = sum +  eachPrice ; 
    sum += eachPrice ; // shortcut
}

System.debug('Sum is '+ sum  ) ; 