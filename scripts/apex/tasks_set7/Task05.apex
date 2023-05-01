/*5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12} */

List<Integer> list1=new List<Integer>{1,4,6,4,6};

//we can not use for each loop if we want to modify the values
// for(Integer each : list1) {
//    each*=2;
// }

// System.debug(list1); 

for(Integer i=0; i<list1.size() ;i++) {
   list1[i]*=2; 
}

System.debug(list1); 

