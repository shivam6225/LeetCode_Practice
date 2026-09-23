class Solution {
    public int missingNumber(int[] nums) {
        int i=0;
        while(i<nums.length){
            int correctIdx = nums[i];
            if (nums[i]==nums.length) {
                i++;
            }
            else if(nums[i] < nums.length && nums[i]!=nums[correctIdx]){
                swap(nums,i,correctIdx);
            }
            else {
                i++;
            }
        }


        for(i=0;i<nums.length;i++){
            if(i!=nums[i]) return i;
        }

        return nums.length;
        
    }

    private static void swap(int[] arr , int i , int j){
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}

//Second Approach

class Solution {
    public int missingNumber(int[] nums) {
        int sum=0;
        int n = nums.length;

        for(int i=0;i<nums.length;i++){
            sum+=nums[i];
        }

        return ((n+1)*n/2)-sum;
        
    }
}