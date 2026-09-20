class Solution {
    public int[] createTargetArray(int[] nums, int[] index) {
        int n = index.length;
        ArrayList<Integer> targetArray = new ArrayList<>();
        for(int i=0;i<n;i++){
            targetArray.add(index[i],nums[i]);
        }

        for(int i=0;i<n;i++)
        {
            nums[i]=targetArray.get(i);
        }


        
        return nums;
    }
}