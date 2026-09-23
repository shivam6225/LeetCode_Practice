class Solution {
    public int findDuplicate(int[] nums) {
        int i=0;
        while(i<nums.length){
            int correctIdx = nums[i]-1;
            if(nums[i]!=i+1){
                if(nums[i]!=nums[correctIdx]){
                    swap(nums,i,correctIdx);
                }
                //Duplicate found as at the correct Index value is already there
                else {
                    return nums[i];
                }
            }
            else {
                i++;
            }
        }

        return -1;
    }

    private static void swap(int[] arr , int i , int j){
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}