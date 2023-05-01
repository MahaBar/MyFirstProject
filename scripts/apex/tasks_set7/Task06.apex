/*6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'} */

List<String> strList = new List<String>{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};

for(Integer i=0; i<strList.size() ;i++) {
  strList[i]=strList[i]+ ' sf'+i; 
}

System.debug(strList); 