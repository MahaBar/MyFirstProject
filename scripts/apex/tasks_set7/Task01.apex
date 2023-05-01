/**
1. Write an Apex code that create List or Array of 10 Integer values. 
   - remove duplicate and print it out 
   - print out the unique item count and difference between total list item count
*/
Integer[] numbers = new Integer[10];
numbers[0]=11;
numbers[1]=8;
numbers[2]=34;
numbers[3]=77;
numbers[4]=9;
numbers[5]=8;
numbers[6]=12;
numbers[7]=77;
numbers[8]=8;
numbers[9]=77;
System.debug(numbers);

Set<Integer> noDuplicates = new Set<Integer>();
for(Integer each : numbers) {
   noDuplicates.add(each);
}
System.debug(noDuplicates);

System.debug(noDuplicates.size());
Integer difference = numbers.size() - noDuplicates.size();
System.debug(difference);




// second solution
List<Integer> list1 = new List<Integer>{1,2,1,4,2,6,1,8,3,10};

Set<Integer> set1 = new Set<Integer>(list1);
System.debug(set1); 

System.debug('Number of unique elements is '+ set1.size());

System.debug('Difference is '+(list1.size()-set1.size())); 