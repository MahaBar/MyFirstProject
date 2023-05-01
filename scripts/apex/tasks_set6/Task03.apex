/**
3. Write an Apex code to create an List of Strings with 6 items 
    - if this list does not contains 'jon snow'
        - then insert 'jon snow' at index 4
    - if it does
        - remove 'jon snow' and insert it again at index 4
 */
 List<String> strList = new List<String>{'Tom B','Adan C','jon snow','Lila Su','Josh A','Kevin Ar'};
 if( ! strList.contains('jon snow') ){
    strList.add(4, 'jon snow');
 }else{
    Integer indexOf = strList.indexOf('jon snow');
    strList.remove(indexOf);
 }
System.debug(strList); 