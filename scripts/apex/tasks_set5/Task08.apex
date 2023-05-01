/**
8. Write a program that create a list of strings and print the values that are not equal to "Salesforce", using a for loop and the continue keyword.
 */
List<String> strList = new List<String>{'item1','Salesforce','item3','Apex','Java'};
for(String each : strList) {
        if( each != 'Salesforce' ){
            System.debug('Current value : ' + each);
            continue; 
        }
}
    