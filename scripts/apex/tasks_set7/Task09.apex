/*9. Write an Apex code that create Set of 10 Integer
   - create a variable called average 
   - calculate the average  sum/item count and print it out
   - Create empty List of Integer
   - store only items above average in above Set
   (removeAll items that below average from the Set)  
*/

Set<Integer> set1=new Set<Integer>{10,20,30,40,50,60,70,80,90,100};

Decimal avg;
Integer sum=0;

for(Integer each : set1) {
   sum+=each;
}

avg=sum/set1.size();

List<Integer> list1 = new List<Integer>();

for(Integer each : set1) {
   if(each>avg)
    list1.add(each);
}

System.debug(list1); 