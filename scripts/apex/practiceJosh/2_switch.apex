/** 
For multiply value use comma : Integer sum1 = 1, sum2 = 2 ;


*/

String season = 'summer' ; 
// Case "switch on" sensistive
switch on season{
    when 'winter'{
        System.debug('Wear your boots') ; 
    }
    when 'spring'{
        System.debug('Wear your sneakers') ; 
    }
    when 'summer'{
        System.debug('Wear your sandals') ; 
    }
    when else{
        System.debug('Wear your loafers') ; 
    }
}