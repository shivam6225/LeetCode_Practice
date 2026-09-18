class Solution {
    public int maximumWealth(int[][] accounts) {
        int max = Integer.MIN_VALUE;

        for(int[] customer:accounts){
            int wealth=0;
            for(int money:customer){
                wealth+=money;
            }
            if(wealth>max) max=wealth;
        }

        return max;
    }
}