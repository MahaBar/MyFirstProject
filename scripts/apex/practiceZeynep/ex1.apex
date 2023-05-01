// 1 task
Boolean isCar=false ; // = mean we initialize
if(isCar=true){ // == mean we initialize, if = changing variable, we assigned new value
    System.debug('This is not supposed to be') ;
}else{
    System.debug('You are right') ;
}

// 2 task. Write a programm that can convert Miles to Km
// The output should be like '10 miles = 16.09 km'
// 1 miles = 1.609
Decimal miles = 10 ; 
Decimal km = miles * 1.609 ; 
System.debug(miles + ' miles = ' + km + ' kms') ;

/**3 task. Write a programm that can display the selected browser
-declare a String variable called browserName
-assume that the valid browser are: chrome, safari, edge, firefox, opera
-if the browserName does not match with the valid browsers names, output
should be 'Invalid browser'
Show three solutions:
1-Use switch
2-Use if
3-Use ternary
*/
String browserName = 'opera' ; 

switch on browserName{
    when 'safari', 'opera' , 'chrome', 'edge' , 'firefox'{
        System.debug(browserName);  
    }
    when else{
        System.debug('Invalid browser')  ;
    }
}

if(browserName == 'opera' || browserName == 'safari' 
    ||  browserName == 'edge' || browserName == 'chrome'
    || browserName == 'firefox' ){
        System.debug(browserName) ; 
    }else{
        System.debug('Invalid browser') ; 
    }

  String result = (browserName == 'safari') ? browserName : 
                (browserName == 'opera') ? browserName :
                (browserName == 'chrome') ? browserName :
                (browserName == 'edge') ? browserName :
                (browserName == 'firefox') ? browserName : 'Invalid browser' ;
  System.debug(result) ;              