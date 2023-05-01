/** Josh
Write a program that takes a list of strings 
that represent the names of account owners, 
and counts the number of times jon snow appears 
in the list.
*/
List<String> accountOwners = new List<String>{'John White', 
                'Andy Young', 'Jon Snow', 
                'Avi Green', 'Jane Gray',
                'Jon Snow', 'Josh Davis'};

Integer countName = 0 ;

for(String eachAccountOwner : accountOwners){
    
    if(eachAccountOwner == 'Jon Snow'){
        // System.debug(eachAccountOwner);
        countName += 1;
    }
}
System.debug(countName); 