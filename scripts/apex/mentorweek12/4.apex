/*
4. Merge two given lists 
*/

List<Integer> nums = new List<Integer>{8, 4, 2, 0, 10, 6};
List<Integer> nums2 = new List<Integer>{1, 7, 9, 5, 3};

for(Integer eachNum2 : nums2){
    nums.add(eachNum2);
}
System.debug(nums);