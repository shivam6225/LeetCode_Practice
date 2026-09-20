class Solution {
    public int numIdenticalPairs(int[] nums) {
        int count =0;

        for(int i=0;i<nums.length-1;i++){
            for(int j=i+1;j<=nums.length-1;j++)
            {
                System.out.println(nums[i]+" "+nums[j]);
                if(nums[i]==nums[j]) count++;
            }
        }

        return count;
    }
}