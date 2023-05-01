/*8.  Write an Apex code that create 2 Set of String with 5 values
   - update set1 to only retain the elements exists in both set1 and set2
      -  HINT : retainAll method */

Set<String> set1=new Set<String>{'chair','table','apple','scrabble','towel'};
Set<String> set2=new Set<String>{'chair','table','orange','season','month'};

Boolean isChanged=set1.retainAll(set2);

System.debug(isChanged); 

System.debug(set1); 
