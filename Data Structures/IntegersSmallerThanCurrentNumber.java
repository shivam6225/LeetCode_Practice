class Solution {
    public int[] smallerNumbersThanCurrent(int[] nums) {
        int n =nums.length;
        int[] freq = new int[101];
        int[] min_count = new int[n];

        //take frequency of the integers
        for(int i=0;i<n;i++){
            freq[nums[i]]++;
        }

        //Add older frequencies to this as they will always be smaller than current
        for(int i=1;i<=freq.length-1;i++){
            freq[i] += freq[i-1];
        }

        for(int i=0;i<n;i++){
            if (nums[i]==0){
                min_count[i]=0;
            }
            else min_count[i]= freq[nums[i]-1];
        }

        return min_count;
    }
}