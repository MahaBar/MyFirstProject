/**
Declare List variable initialize it`s value
and add all the items in one shot

Format
List<DataType> listName
        = new List<DataType>{item1, item2, item3, ....} ;

 */

 List<String> groceries = new List<String>{'Milk' , 'Bread' , 'Egg' , 'Coffee'} ;
 System.debug(groceries) ; 

// create list of Integer and add 5 value in one shot
List<Integer> numList = new List<Integer>{1,8,3,9,5} ; 
System.debug(numList) ; 
 
// create list of Decimal and add 5 value in one shot
List<Decimal> prices = new List<Decimal>{0.99,3.78,4.66,5.99,100.99} ; 
System.debug(prices) ; 

// create list of Id and add 5 value in one shot
List<Id> accountIds = new List<Id>{ '0018W0000251OK6QAM' , 
                                    '0018W0000251OK6QAS', 
                                    '0018W0000251OK6QAA',
                                    '0018W0000251OK6QAT',
                                    '0018W0000251OK6QAS'} ; 
System.debug(accountIds) ; 

// create a List of Boolean add 5 item into it
List<Boolean> answers = new List<Boolean>{true, false, true, false, false} ; 
System.debug(answers) ; 