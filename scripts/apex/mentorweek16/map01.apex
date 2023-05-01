Map<String, String> employeeMap = new Map<String, String>();
employeeMap.put('Ddene', 'F');
employeeMap.put('Winfred', 'M');
employeeMap.put('Jereme', 'M');
employeeMap.put('Glad', 'F');
employeeMap.put('Desirae', 'F');

//  1. Update the 'M' to Male and 'F' to Female

for(String each : employeeMap.keySet()){ // we are going to iterate over

    if(employeeMap.get(each).equalsIgnoreCase('F')) // insensitive case, ignoring case upper or lower case
    employeeMap.put(each, 'Female');
    else if(employeeMap.get(each).equalsIgnoreCase('M'))
    employeeMap.put(each, 'Male');
}
System.debug('employeeMap value is : ' + employeeMap);
