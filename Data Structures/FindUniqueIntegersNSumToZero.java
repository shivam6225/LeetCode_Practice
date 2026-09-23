class Solution {
    public int[] sumZero(int n) {
        int[] arr = new int[n];
        int seq = 1;
        for(int i=0;i<n/2; i++){
            arr[i] = -1*seq;
            arr[n-1-i] = seq;
            seq++;
        }

        return arr;
    }
}