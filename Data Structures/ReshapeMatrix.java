class Solution {
    public int[][] matrixReshape(int[][] mat, int r, int c) {
        int a =0;
        int b =0;
        if(mat.length==0 || r*c!=mat.length*mat[0].length){
            return mat;
        }
        int[][] rMat = new int[r][c];
        for(int[] row:mat){
            for(int col:row){
                rMat[a][b]=col;
                b++;
                if(b>=c){
                    b=b%c;
                    a++;
                }
            }
        }

        return rMat;
    }
}