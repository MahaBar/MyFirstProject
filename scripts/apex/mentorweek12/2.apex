/*
2. Find the max number from the given list
*/

List<Integer> nums = new List<Integer>{ 8, 20, 2, 10, 6 };

Integer max = nums.get(0); // 8
for (Integer eachNum : nums) {
  if (eachNum > max) {
    // if its true
    max = eachNum; // print this
  }
}
System.debug('The max num is : ' + max);
