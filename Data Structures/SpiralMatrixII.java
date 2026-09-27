class Solution {
    public int[][] generateMatrix(int n) {

        int top=0;
        int bottom = n-1;
        int left =0;
        int right =n-1;

        int[][] mat = new int[n][n];
        int k =1;

        while(top<=bottom && left<=right){
            for(int i=left ; i<right+1;i++){
                mat[top][i]=k++;
            }
            top++;
            for(int i=top; i<bottom+1;i++){
                mat[i][right]=k++;
            }
            right--;
            if(top<=bottom){
                for(int i=right;i>left-1;i--){
                    mat[bottom][i]=k++;
                }
                bottom--;
            }
            if(left<=right){
                for(int i=bottom;i>top-1;i--){
                    mat[i][left]=k++;
                }
                left++;
            }
        }

        return mat;
        
    }
}