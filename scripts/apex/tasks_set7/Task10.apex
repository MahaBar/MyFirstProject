/*10. Write an Apex code that create List of 10 Integer values as scoreList
    - get the count of numbers less than 0 or greater than 100
    - in separate loop, update the value of items as below
      - if the Integer less than 0 update it to 0 
      - if the Integer more than 100 update it to 100
    - HINT : Array syntax is much simpler when it comes to update */


List<Integer> scoreList =new List<Integer>{-100,-50,-20,0,5,68,90,100,200,450};

Integer count=0;

for(Integer each : scoreList) {
  if(each<0||each>100)
  count++;
}
  System.debug(count); 


for(Integer i=0; i<scoreList.size() ;i++) {
  if(scoreList[i]<0)
    scoreList[i]=0;
  if(scoreList[i]>100)
    scoreList[i]=100;

}
System.debug(scoreList); 




