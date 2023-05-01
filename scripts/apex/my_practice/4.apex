/**
1. Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
(try out the same with while loop and do while loop as practice)
*/
Integer sumOffOdd = 0;
for(Integer count=1; count<=100 ;count+=2) {
    sumOffOdd +=count;
}
System.debug(sumOffOdd); 

Integer count = 1; // while
Integer sumOffOdd1 = 0;
while( count <= 100 ){
     
    sumOffOdd1 +=count; 
    count +=2;
}
System.debug(sumOffOdd1); 

Integer count1 = 1, sum = 0; // do while
do{
    sum = sum+count1;
    count1 +=2;
    
}while( count1 <= 100 );
System.debug(sum); 


// practice List using similar approach 
/**
2. Write a program that store the even numbers from 1 to 20 into List of Integer
then write an apex code to get the sum of all items in the list. 
*/
List<Integer> numbers = new List<Integer>{2,4,6,8,10,12,14,16,18,20};
Integer sumOfN = 0;
for(Integer each : numbers) {
    sumOfN += each;
}
System.debug(sumOfN); 



/** 
3. Write a program that store 10 random Decimal numbers in List of Decimal
   print out the size of the list 
   print out the sum of all numbers
   print out the average of all numbers 
   now try to go back to the code where you added elements , 
   add more items into the list and run your program again to see if it works. 
*/
List<Decimal> randomList = new List<Decimal>{3.11,5.1,7.6,9.00,4.34,8.11,0.99,99.80,7.90,5.89,8.99};
System.debug(randomList.size()); 

Decimal sumRandom = 0;
for(Decimal each : randomList) {
    sumRandom +=each;
}
System.debug(sumRandom); 

System.debug(sumRandom / randomList.size()); 



/**
4. Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers) 
   print out the sum of positive numbers 
   print out the count of positive numbers 
   print out the count of negative numbers 
*/
List<Long> longNumbers = new List<Long>{48880088L,
                                1660000666L,
                                5555505055L,
                                -333444333L,
                                6666666666L,
                                3033333333L,
                                -1111111111L,
                                -3400004444L,
                                9997777777L} ;
Long sumPos = 0;
for(Long each :longNumbers ) {
    if( each>=0 )
        sumPos +=each;
    
}
System.debug(sumPos);     

Integer posNum = 0, negNum = 0;
for(Long each : longNumbers) {
    if(each>=0){
        posNum ++;
    }
    else{
        negNum ++;
    }
}
System.debug(posNum);
System.debug(negNum);  


/**
5. Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
*/
List<String> strList = new List<String>{'item1','item2','item3','item4','item6','item3','item4','item2','item3','item5'};
Set<String> yourSetName = new Set<String>();
System.debug(strList.size());  

for(String each : strList) {
    System.debug('Current value : ' + each);
    yourSetName.add(each);
}
System.debug(yourSetName); 
    
System.debug(yourSetName.size()); 


/**
6. Write a program that can create X sample List name according to given number as below 
  1. create a variable called leadCount as Integer and initialize to 4
  2. create a empty List of String 
  3. use for loop to add items to List to generate as below  
    Sample Lead 1
    Sample Lead 2
    Sample Lead 3
    Sample Lead 4
  4. print out the List variable and the size 
  5. try changing the leadCount and run your code again 
*/
Integer leadCount = 4 ; 
List<String> emptyList = new List<String>();
for(Integer count = 1 ; count <= leadCount ; count ++){
    emptyList.add('Sample Lead ' + count);
}

for(String eachLead : emptyList){
    System.debug(eachLead) ;
} 
System.debug(emptyList.size());


/**
7. Similar to above task 
  1. now create two String variables to store firstName and lastName
  2. create a variable called leadCount as Integer and initialize to 5
  2. Create an empty List of String 
  3. using loop generate sample lead email in below format and add it to the list
  
  firstNameValue+lastNameValue_1@force.com
  firstNameValue+lastNameValue_2@force.com
  firstNameValue+lastNameValue_3@force.com
  firstNameValue+lastNameValue_4@force.com
  firstNameValue+lastNameValue_5@force.com
  4. try changing the leadCount and run your code again 
*/
String firstName1 = 'Luc', lastName1 = 'Su';
Integer leadCount1 = 5;
List<String> emptList = new List<String>();
for(Integer count=1; count<=leadCount1 ;count++) {
    emptList.add(firstName1+ '+' + lastName1 +  '_'+count+'@force.com'); 
}
for(String each : emptList) {
    System.debug(each);
}


/**
8. Create a program that take some item from One List to Another according to the condition 
  1. Create List of Integer with 9 elements|items 
  2. Create another empty List of Integer 
  3. Iterate over the first List using for each loop 
    - check if the number is between 5-10 
      - if so add this number to second list using secondList.add(itemHere) ; 
  4. Print out the first List 
  5. Print out the second List and it's size
*/
List<Integer> firstList = new List<Integer>{94,68,7,44,86,12,9,2,93};
List<Integer> secondList = new List<Integer>();
for(Integer each : firstList) {
        if( each >= 5 && each <=10 ){
            secondList.add(each);
         }
}
System.debug(firstList);
System.debug(secondList);  
System.debug(secondList.size()); 



/**
9. Write a program that takes a list of strings that represent the names of account owners, 
and counts the number of times jon snow appears in the list.
*/
List<String> accountOwners = new List<String>{'jon snow', 'bob j','jon snow', 'adam si', 'jon snow'};
Integer countName = 0 ;
for(String eachAccountOwner : accountOwners){
    
    if(eachAccountOwner == 'Jon Snow'){
        // System.debug(eachAccountOwner);
        countName += 1;
    }
}
System.debug(countName); 
    
    

/**
10. Write a program that takes a list of integers that represent 
the amounts of money spent by a set of users, and calculates the number 
of users who spent more than a certain amount (like 10000) of money.
in another word, create a list of Integer and get the count of numbers that over 10000 
 */
List<Integer> amountList = new List<Integer>{10888,20,509999,6900,68,30000,6665,111111};
Integer countNum = 0;
for(Integer eachNum : amountList) {
    if( eachNum >= 10000 ){
        countNum ++;
    }    
}
System.debug(countNum); 