/*
3. Find the min number from the given list
*/

List<Integer> nums = new List<Integer>{8, 4, 2, 10, 6};

Integer min = nums.get(0); 
for( Integer eachNum : nums){

    if(eachNum < min){
        min = eachNum;
    }
}
System.debug('The min num is : ' + min);

