class Solution {
    public int oddCells(int m, int n, int[][] indices) {
        int[] rows = new int[m];
        int[] cols = new int[n];

        for(int[] idx:indices){
            rows[idx[0]]+=1;
            cols[idx[1]]+=1;
        }

        int rOdd =0;
        int cOdd =0;

        for(int row:rows){
            rOdd += row%2;
        }
        for(int col:cols){
            cOdd += col%2;
        }

        System.out.print(rOdd +" "+ cOdd);

        return rOdd*(n-cOdd) + (m-rOdd)*cOdd;
    }
}

//2nd approach

class Solution {
    public int oddCells(int m, int n, int[][] indices) {
        boolean[] rows = new boolean[m];
        boolean[] cols = new boolean[n];

        for(int[] idx:indices){
            rows[idx[0]]^=true;
            cols[idx[1]]^=true;
        }

        int rOdd =0;
        int cOdd =0;

        for(boolean row:rows){
            rOdd += row?1:0;
        }
        for(boolean col:cols){
            cOdd += col?1:0;
        }

        return rOdd*(n-cOdd) + (m-rOdd)*cOdd;
    }
}