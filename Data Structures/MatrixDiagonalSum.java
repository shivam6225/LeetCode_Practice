class Solution {
    public int diagonalSum(int[][] mat) {

        int sum =0;
        //Sum of Primary diagonal
        for(int i=0;i<mat.length;i++){
            sum+=mat[i][i];
            if(i != mat.length-1-i){
                sum+=mat[i][mat.length-1-i];
            }
        }
        
        return sum;
    }
}