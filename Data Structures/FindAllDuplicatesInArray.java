class Solution {
    public List<Integer> findDuplicates(int[] nums) {
        int i=0;
        List<Integer> duplicate = new LinkedList<>();
        while(i<nums.length){
            int correctIdx = nums[i]-1;
            if(nums[i]!=nums[correctIdx]){
                swap(nums,i,correctIdx);
            }
            else {
                i++;
            }
        }

        for(i=0;i<nums.length;i++){
            if(nums[i]!=i+1) duplicate.add(nums[i]);
        }

        return duplicate;
    }

    private static void swap(int[] arr , int i , int j){
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    } 
}