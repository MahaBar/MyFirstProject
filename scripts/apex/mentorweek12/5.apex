/*
5. Merge unique elements of two given lists
*/

List<Integer> nums = new List<Integer>{8, 7, 2, 0, 10, 6, 6, 3, 4};
List<Integer> nums2 = new List<Integer>{1, 7, 9, 8, 4, 5, 3};
Set<Integer> uniqueNums = new Set<Integer>();

for(Integer eachNum : nums){
    uniqueNums.add(eachNum);
}
for(Integer eachNum2 : nums2){
    uniqueNums.add(eachNum2);
}

System.debug(uniqueNums);