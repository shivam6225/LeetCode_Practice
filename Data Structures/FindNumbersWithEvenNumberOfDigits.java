class Solution {
    public int findNumbers(int[] nums) {
        int count =0;
        for (int num : nums){
            int digits = String.valueOf(num).length();
            if(digits%2==0){
                count++;
            }
        }
        return count;
    }
}

//Second Approach

class Solution {
    public int findNumbers(int[] nums) {
        int count =0;
        for (int num : nums){
            int digits = 0;
            while(num>0){
                digits++;
                num/=10;
            }
            if(digits%2==0){
                count++;
            }
        }
        return count;
    }
}

//Third Approach
class Solution {
    public int findNumbers(int[] nums) {
        int count =0;
        for (int num : nums){
            int digits = (int)(Math.log10(num)+1);
            if(digits%2==0){
                count++;
            }
        }
        return count;
    }
}