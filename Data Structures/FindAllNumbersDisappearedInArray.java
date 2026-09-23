class Solution {
    public List<Integer> findDisappearedNumbers(int[] nums) {

        int i=0;
        while(i<nums.length){
            int correctIdx = nums[i]-1;
            if(nums[i]!=nums[correctIdx]){
                swap(nums,i,correctIdx);
            }
            else {
                i++;
            }
        }

        List<Integer> missing = new ArrayList<>();

        for(i=0;i<nums.length;i++){
            if(i!=nums[i]-1) missing.add(i+1);
        }

        return missing;
    }

    private static void swap(int[] arr , int i , int j){
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
        
}