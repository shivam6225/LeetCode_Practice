class Solution {
    public int[] twoSum(int[] nums, int target) {

        Map <Integer,Integer> numIdx = new HashMap<>();

        for(int i=0;i<nums.length;i++){
            int complement = target - nums[i];
            if(numIdx.containsKey(complement)){
                return new int[] {numIdx.get(complement),i};
            }

            numIdx.put(nums[i],i);
        }

        return new int[]{};
    }
}