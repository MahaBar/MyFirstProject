/**
6. Continue from above list 
- Write a while loop to check the list contains 'Iron Man' 
 - if so find index of each Iron Man and remove from the list
 */
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 
                                'Iron Man', 'Wonder Woman', 'Captain America', 
                                'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

Integer index = 0; 
while( heroList.contains('Iron Man')  ){
    
    Integer indexOfIronMan = heroList.indexOf('Iron Man');
       heroList.remove(indexOfIronMan);
}
System.debug(heroList); 