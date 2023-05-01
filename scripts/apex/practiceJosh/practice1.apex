/*
Create a list for scores less than 50
Create a list for scores greater than 80

Get the lowest score from low scores, get the index
*/

List<Integer> scores = new List<Integer>{65, 45, 80, 90, 45, 40, 95, 30};

scores.add(20);
System.debug(scores);

List<Integer>lowScores = new List<Integer>();
List<Integer>highScores = new List<Integer>();

for(Integer eachScore : scores){

    if( eachScore<50  ){
        lowScores.add(eachScore);
    }else if(eachScore>80){
        highScores.add(eachScore);
    } 
}
System.debug('low scores ' + lowScores);
System.debug('high scores ' + highScores); 

// for loop because we want to iterate each loop
Integer minScore = lowScores[0];
            // or i <= lowScores.size()-1 its the same 
for(Integer i = 0; i < lowScores.size(); i++){ 

    if(lowScores.get(i) < minScore){

        minScore = lowScores.get(i);
    }
}
System.debug('min score is ' + minScore);



/*
Create a List of names and
Exit the loop if you encounter 'Mary' 
*/

List<String> names = new List<String>{ 'Josh', 'Ben', 'Mary' };
names.add(0, 'Ken');
System.debug(names.size());
System.debug(names);

for (String eachName : names) {
  System.debug(eachName);

  if (eachName == 'Ben') {
    System.debug('Done');
    break;
  }
}



/*
Create a Set of prices and
Skip the iteration if you encounter a price greater than 10.00 
*/

Set<Decimal> prices = new Set<Decimal>{ 8.99, 11.99, 7.99, 12.99 };
prices.add(4.99);
prices.add(8.99);
System.debug(prices.size());
System.debug(prices);

for (Decimal eachPrice : prices) {
  if (eachPrice > 10.00) {
    continue;
  }

  System.debug(eachPrice);
}



/*
Create a list for scores less than 50
Create a list for scores greater than 80

Get the lowest score from low scores
*/

List<Integer> scores = new List<Integer>{65, 45, 80, 90, 45, 40, 95, 30};

scores.add(20);
System.debug(scores);

List<Integer> lowScores = new List<Integer>();
List<Integer> highScores = new List<Integer>();

for(Integer eachScore : scores){

    if(eachScore < 50){
        lowScores.add(eachScore);
    }else if(eachScore > 80){
        highScores.add(eachScore);
    }

}

System.debug('Low scores ' + lowScores);
System.debug('High scores ' + highScores);      

Integer minScore = lowScores[0];                

for(Integer i = 0; i < lowScores.size(); i++){   // i <= lowScores.size()-1

    if(lowScores.get(i) < minScore){

        minScore = lowScores.get(i);
    }

}

System.debug('Min score is ' + minScore);







List<String> character = new List<String> {'A', 'B', 'C', 'D', 'E', 'F', 'A', 'B', 'C', 'D', 'A', 'B', 'H'};
Set<String> uniChar = new Set<String>{'I', 'J', 'K'};

character.addAll(unichar);
System.debug('List ' + character);

uniChar.addAll(character);
System.debug('Set ' + uniChar);

Boolean containsAll = uniChar.containsAll(character);
System.debug('Contains all? ' + containsAll);

uniChar.removeAll(character);
System.debug(uniChar);
List<String> listA = new List<String>{'apple', 'banana', 'cherry'};
List<String> listB = listA;
List<String> listC = new List<String>(ListA);
List<String> listD = new List<String>();

listD.addAll(listA);
listA.clear();
// listA.add('orange');

System.debug(listB.size());
System.debug(listC.size());
System.debug(listD.size());












