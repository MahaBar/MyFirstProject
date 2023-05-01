//Square s = new Square('Box' ,  10) ; 
// Rectangle s = new Square('Box' ,  10) ; 
// Shape s =  new Square('Box' ,  10) ; 

// s.calculateArea();
// System.debug('s value is : ' + s);

// downcast the variable s DataType to Square 
// Square sq  =  s ; 


// get the count of all Account and store it in Integer 
AggregateResult result  =  [SELECT Count(Id) total FROM Account]; 
// AggregateResult.get method will return type Object (grandparent of all things in Apex)
// in order to save it as Integer we need to downcast it to Integer 
// just like we did downcast the Shape to Square
Integer count = (Integer) result.get('total');
System.debug('count value is : ' + count);


// Integer x = 10 ;

// Integer y = x ; 