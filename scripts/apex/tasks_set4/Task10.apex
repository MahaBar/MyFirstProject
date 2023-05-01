/** 
Write a program that takes a list of integers that represent 
the amounts of money spent by a set of users, 
and calculates the number of users who spent more than 
a certain amount (like 10000) of money.
in another word, create a list of Integer and 
get the count of numbers that over 10000 
*/

List<Integer> amounts = new List<Integer>{6555,90000,8733,50000};
Integer sum = 0 ; 
for(Integer eachAmount : amounts){
    if(eachAmount >= 10000){
        sum += eachAmount ;
    }
}
System.debug(sum); 