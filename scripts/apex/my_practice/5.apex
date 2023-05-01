/**
1. Write a program than create List of Double with 10 elements 
   print out the first value and last value of the list 
   if first item and last item values are equal 
   print end with what we started 
   else print different beginning and ending 
    HINT : No Loop Needed Here
*/
List<Double> priceList = new List<Double>{20.132d, 31.236d, 43.734d, 0.12d, 31.36d, 4.734d, 061.9d, 13.953d, 06.399d, 13.953d};
Double first =  priceList.get(0); 
Double last = priceList.size()-1; 
if( first == last ){
    System.debug('end with what we started'); 
}else{
    System.debug('different beginning and ending'); 
}


/**
2. Write a program that store List of long with 10 items 
with positive and negative numbers and print out all positive 
values using for loop try using the continue instead.
*/
List<Long> longNumList = new List<Long>{726676L, 964752L, -235989L, 174101L, -604326L, 721676L, 964052L, 235089L, -174101L, 806111L};
for(Long eachNum : longNumList) {
    if( eachNum>=0 ){
        System.debug(eachNum); 
        continue;
    }    
}
   


/**
3. Write a program that store List of Integer with 10 items 
and try to get the sum of values,  break out of the loop if the sum is greater than 100. 
*/
List<Integer> numberList = new List<Integer>{16,43,11,7,33,12,67,065,80,12};
Integer sum = 0;
for(Integer eachN : numberList) {
    System.debug(eachN); 
    sum += eachN;
        if( sum > 100 ){
            break;
        }
}
System.debug(sum); 



/**
4. Write a program that store List of Double with 10 items 
   break out of the loop if any number is between 50.5 and 99.99 
*/
List<Double> numList = new List<Double>{93.677d, 69.046d, 83.761d, 14.544d, 58.679d,9.677d, 1.046d, 83.1d, 14.4d, 5.679d};
for(Double eachNum : numList) {
    System.debug('Current value : ' + eachNum);
        if( eachNum >= 50.5 && eachNum <= 99.99 ){
            break;
        }
}  


/**
5. Write a program that create List of Id with 10 items and use 
2 different loop (for loop and for each loop )to print out all value for practice 
    - continue from above
     if the any ID match exactly '001xxxxxxxxxxxxxxx' 
     then break out of the loop
*/
List<ID> accountIds = new List<ID>{'0018W0000251OK6QAA','0018W0000251OK6QAB',
                    '0018W0000251OK6QAC','0018W0000251OK6QAD','0018W0000251OK6QAA',
                    '0018W0000251OK6IAB','0018W0000251OK6QOC','0018W0000251OK6QAA',
                    '0018W0000251OK6QAB','0018W0000251OJ6QAD'};
for(Id eachId : accountIds) {
    System.debug('Current value : ' + eachId);
        if( eachId == '0018W0000251OK6IAB' ){
            break;
        }
}

for(Integer i=0; i<accountIds.size(); i++) {
        if( accountIds.get(i) == '0018W0000251OK6IAB' ){
            break;
        }
        System.debug(accountIds.get(i)); 
}


/**
6. Write a program that create List of Integer with 10 items 
   get the count of the items more than 5 (try for loop and for each loop)
    and print out at the end 
*/
List<Integer> itemList = new List<Integer>{35,31,1,6,11,8,15,4,034,94};
Integer count = 0;
for(Integer eachItem : itemList) {
    if( eachItem>5 ){
        count += eachItem;
    }
}
System.debug(count);   

System.debug('*****************'); 

for(Integer i=0; i>5 ;i++) {
    if( itemList.get(i)  > 5 ){
        count += itemList.get(i);
    }
}
System.debug(count); 

/**
7. Write a program that create List of Integer with 10 items 
    get the count of the items more than 5 and 
    break out of the loop if you found 2 numbers that 
    more than 5
*/
List<Integer> numberList2 = new List<Integer>{4,35,51,09,44,12,5,8,56,31};
Integer count1 = 0;
for(Integer each : numberList2) {
    System.debug(each); 
        if( each>5 ){
            count1 ++;
        }
        if( count1==2 ){
            break;
        }
}
    


/**
8. Write a program that create a list of strings and print the 
values that are not equal to "Salesforce", 
using a for loop and the continue keyword.
*/
List<String> strList = new List<String>{'item1','Salesforce','item3','Apex','Java'};
for(String each : strList) {
        if( each != 'Salesforce' ){
            System.debug('Current value : ' + each);
            continue; 
        }
}
    
    


/**
9. Write a program that create a list of strings and print 
the values that are not equal to "Admin" or "Developer" 
using a for loop and the continue keyword.
*/
List<String> strList9 = new List<String>{'item1','Admin','item3','item4','Developer'};

for(Integer i=0; i<strList9.size() ; i++) {
    String each = strList9.get(i);
        if( each == 'Admin' ||  each == 'Developer' ){
            continue;
        }
    System.debug(each); 
}
    

/**
10. Write a program that create a list of strings with 10 values 
and get the count of the items that are not equal to "Admin" or 
"Developer" using a for loop and the continue keyword.
*/
List<String> valueList = new List<String>{'item1','item2','Admin','item4','Developer'};
Integer count7 = 0;
for(Integer i=0; i<valueList.size() ;i++) {
    String each = valueList.get(i);
    if( !(each == 'Admin' ||  each == 'Developer') ){
        count7 ++;
        continue;
    }
}
System.debug(count7); 





