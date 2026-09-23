class Solution {
    public int firstMissingPositive(int[] nums) {

        int i =0;

        while(i<nums.length){
            int correctIdx = nums[i] - 1;
            //num should not be 0 or more than N
            if(nums[i]>0 && nums[i]<=nums.length && nums[correctIdx]!=nums[i] ){
                swap(nums,correctIdx,i);
            }
            else{
                i++;
            }
        }

        for (i=0;i<nums.length;i++){
            if(nums[i]-1!=i) return i+1;
        }
        
        // Missing positive number is more than N
        return nums.length+1;
    }

    private static void swap(int[] arr , int i , int j){
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}