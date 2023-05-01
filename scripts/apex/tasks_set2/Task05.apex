/**
5. Write and Apex code that store opportunityStage as String and probabilityPercentage as Decimal
   - if the stage is 'Prospecting', assign the value of probabilityPercentage to 0.1
   - if the stage is 'Qualificationn', assign the value of probabilityPercentage to 0.2
   - if the stage is 'Need Analysis', assign the value of probabilityPercentage to 0.3
   - if the stage is 'Closed Won', assign the value of probabilityPercentage to 1.0
   - if the stage is 'Closed Lost', assign the value of probabilityPercentage to 0
   - at the end Print out message 'State is X and probability Percentage is X %'
 */
 String opportunityStage = 'Need Analysis' ; 
 Decimal probabilityPercentage ;
 Switch on (opportunityStage){
    When 'Prospecting' {
        System.debug('probabilityPercentage = 0.1' ) ; 
    }
    When 'Qualificationn' {
        System.debug('probabilityPercentage = 0.2') ;
    }
    When 'Need Analysis' {
        System.debug('probabilityPercentage = 0.3') ;
    }
    When 'Closed Won' {
        System.debug('probabilityPercentage = 1.0') ;
    }
    When 'Closed Lost' {
        System.debug('probabilityPercentage = 0') ;
    }
}
 System.debug('Stage is ' +  opportunityStage + ' and probability Percentage is ' + probabilityPercentage + ' %') ;
       