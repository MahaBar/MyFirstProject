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