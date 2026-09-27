class Solution {
    public int maxSubArray(int[] nums) {
        int total = 0;
        int max = nums[0];
        for(int num:nums){
            if(total<0)
                total=0;
            total+=num;
            max = Math.max(max,total);
        }

        return max;
    }
}