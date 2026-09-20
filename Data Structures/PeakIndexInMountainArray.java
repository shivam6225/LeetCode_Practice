class Solution {
    public int peakIndexInMountainArray(int[] arr) {

        int start = 0;
        int end = arr.length-1;

        while(start<end){
            int mid = start + (end-start)/2;

            //We are in decreasing part of the array , go left
            if(arr[mid]>arr[mid+1]){
                end = mid;
            }
            //We are in increasing part of array , go right
            else {
                start = mid+1;
            }
        }

        //Both start and end will point to same index
        return start;
        
    }
}