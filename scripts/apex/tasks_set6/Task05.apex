/**
5. Continue from above List of 10 String with some duplicates values
- Print out all indexes of 'Iron Man' in the list 
- Create another List of Integer and Store the all indexes into new List when looping 
- print out the size of new List. 
 */
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 
                                'Iron Man', 'Wonder Woman', 'Captain America', 
                                'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};


List<Integer> newList = new List<Integer>();
for(Integer index=0; index<heroList.size() ;index++) {
    if( heroList.get(index) == 'Iron Man' ){
        System.debug(index); 
    }  
    newList.add(index);
}
System.debug(newList); 
System.debug(newList.size()); 