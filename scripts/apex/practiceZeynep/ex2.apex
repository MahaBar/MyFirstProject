/**
4 Task. With a variable named size given, write a program 
that can display the price and calories of cappuccino as displayed below.
Valid sizes are tall, grande and venti and their prices and calories  are

Tall: price is $3.69
90 calories

Grande: price is $3.99
120 calories

Venti: price is $4.29
150 calories

If the size is invalid than the output should be ‘Invalid Size’

Solution 1: use if statement
Solution 2: use switch statement
Solution 3: use ternary
*/

String size = 'grande' ; 

if(size == 'venti'){
    System.debug(size + ': price is $4.29 \n150 calories') ; 
}else if(size == 'tall'){
    System.debug(size + ': price is $3.69 \n90 calories') ; 
}else if(size == 'grande'){
    System.debug(size + ': price is $3.99 \n120 calories') ; 
}else{
    System.debug('Invalid Size') ; 
}

String result ;
switch on size{
    when 'venti'{
        result = size + ': price is $4.29 \n150 calories' ; 
    }
    when 'tall'{
        result = size + ': price is $3.69 \n90 calories' ; 
    }
    when 'grande'{
        result = size + ': price is $3.99 \n120 calories' ;
    }
    when else {
        result = 'Invalid Size' ;
    }
}
System.debug(result) ; 
 
result = (size == 'venti') ? size + ': price is $4.29 \n150 calories' :
        (size == 'grande') ? size + ': price is $3.99 \n120 calories' :
        (size == 'tall') ? size + ': price is $3.69 \n90 calories' :
        'Invalid Size' ;
System.debug(result) ;        