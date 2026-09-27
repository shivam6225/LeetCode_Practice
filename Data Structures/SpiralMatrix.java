class Solution {
    public List<Integer> spiralOrder(int[][] matrix) {

        int top =0;
        int bottom = matrix.length-1;
        int left =0;
        int right = matrix[0].length-1;

        List<Integer> spiral = new ArrayList<>();
        if (matrix == null || matrix.length == 0) return spiral;
        while(top<=bottom && left<=right){
            for(int i=left;i<right+1;i++){
                spiral.add(matrix[top][i]);
            }
            top++;
            for(int i=top;i<bottom+1;i++){
                spiral.add(matrix[i][right]);
            }
            right--;
            if(top<=bottom){
            for(int i=right;i>left-1;i--){
                spiral.add(matrix[bottom][i]);
            }
            bottom--;}
            if(left<=right){
            for(int i=bottom;i>top-1;i--){
                spiral.add(matrix[i][left]);
            }
            left++;}
        }

        return spiral;
        
    }
}