class Solution {
    public int maximumPopulation(int[][] logs) {
        int[] year = new int[101];

        for(int[] log:logs){
            year[log[0]-1950]++;
            year[log[1]-1950]--;
        }
        int max = year[0];
        int maxYear = 1950;
        for(int i=1;i<year.length;i++){
            year[i]+=year[i-1];
            if(max<year[i]) {
                maxYear=i+1950;
                max = year[i];
            }

        }

        return maxYear;
    }
}