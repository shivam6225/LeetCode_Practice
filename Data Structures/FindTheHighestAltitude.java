class Solution {
    public int largestAltitude(int[] gain) {
        
        int highest=0;
        int maxheight =0;

        for(int num:gain){
            highest = num + highest;
            maxheight = Math.max(highest,maxheight);
        }

        return maxheight;

    }
}