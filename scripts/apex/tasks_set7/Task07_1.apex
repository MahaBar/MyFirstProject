/*7. Write an Apex code that create List or Array of 8 String values
   - store the index of 2 items in the middle into 2 variables mid1, mid2
   - now imagine you unknown (even) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 8 items : number 4 and 5 items are in the middle
     - if you have 18 items : number 8 and 9 items are in the middle and so on
     - no loop needed here
   - print out the value of items in the middle */

List<String> strList = new List<String>{
    'Ercan',
    'Fatih',
    'Nora',
    'Natyra',
    'Cavidan',
    'Sean',
    'Leke',
    'Seyfullah'
};

Integer mid1=strList.size()/2;
Integer mid2=strList.size()/2-1;

System.debug('the items in the middle are '+strList[mid1]+' and '+strList[mid2]); 