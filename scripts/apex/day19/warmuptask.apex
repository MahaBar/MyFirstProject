/**
Create a List of String with 5 items 
Create a Map to store 
   the word as key -- the frequency of that word as value 
   // Happy 3
   // Sunny 3
   // Pleasant 1
   // Breakfast 1
   // flower 3
 */

List<String> strList = new List<String>{
  'Happy',
  'Sunny',
  'Pleasant',
  'Breakfast',
  'flower',
  'flower',
  'flower',
  'Sunny',
  'Sunny',
  'Happy',
  'Happy'
};

Map<String,Integer> frequencyMap = new Map<String,Integer> (); 

// Loop through each and every item in the list 
for(String eachWord : strList) {
  
    // check if this map already contains the str 
    // if not add this into the map 
    if( !frequencyMap.containsKey(eachWord)   ){
        frequencyMap.put(eachWord, 1); 
    }else{
      // if this word already exists in the map as key 
      // then get the value of that key , increment by one 
      Integer currentCount = frequencyMap.get(eachWord); 
      // now increment the current count by one and update the value of the key
      ++currentCount ;
      frequencyMap.put(eachWord,  currentCount );
    }
}

System.debug('frequencyMap value is : ' + frequencyMap); 
 


//Homework: inspired by above
//Given a long String
//find out frequency of each Character











