/**
5. Write a program that create List of Id with 10 items and use 2 different loop (for loop and for each loop )to print out all value for practice 

    - continue from above
     if the any ID match exactly '001xxxxxxxxxxxxxxx' 
     then break out of the loop
 */
List<ID> userId = new List<ID>();

  userId.add('0018W0000251OK6QAC');
  userId.add('0018W0000251OK6QAI');
  userId.add('0018W0000251OK6QAB');
  userId.add('0018W0000251OK6QAN');
  userId.add('0018W0000251OK6QAA');
  userId.add('0018W0000251OK6QAI');
  userId.add('0018W0000251OK6QAW');
  userId.add('0018W0000251OK6QAA');

for(Integer i=0; i<userId.size() ;i++) {
    if( userId.get(i)=='0018W0000251OK6QAA' ){
        break;
    }
    System.debug(userId.get(i));
    }
System.debug('*********************');

for(String each : userId) {
    System.debug(each);
    if( each ==  '0018W0000251OK6QAA'){
        break;
    }
}
    

