/*2.Write an Apex code that create 1 Random double between 0 to 100
   - print it out 
   - if the number is even -> print 'even number!!!' 
   - if it can be divided by 5 with no remainder -> print 'cool number'
   - if it can be divided by 7 with remainder 3  -> print 'cooler number'  */


Double num = Math.random()*100;
System.debug(num); 

Integer var=num.intValue();

//Integer var=Math.randim()*100.intValue();

if(Math.mod(var,2)==0)
   System.debug(var+' is even number');

if(Math.mod(var,5)==0)
   System.debug(var+' is cool number');

if(Math.max(var,7)==3)
   System.debug(var+' is cooler number');