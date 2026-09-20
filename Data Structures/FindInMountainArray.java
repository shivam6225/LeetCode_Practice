/**
 * // This is MountainArray's API interface.
 * // You should not implement it, or speculate about its implementation
 * interface MountainArray {
 *     public int get(int index) {}
 *     public int length() {}
 * }
 */
 
class Solution {
    public int findInMountainArray(int target, MountainArray mountainArr) {
        int peak = peakElementPos(mountainArr);
        int firstTry = agonisticSearch(mountainArr,target,0,peak,true);
        if(firstTry!=-1) return firstTry;
        return agonisticSearch(mountainArr,target,peak+1,mountainArr.length()-1,false);
    }

    static int peakElementPos(MountainArray mountainArr){
        int start = 0;
        int end = mountainArr.length() -1;
        while(start<end){
            int mid = start + (end-start)/2;
            //We are in decreasing part of array -> move left
            if(mountainArr.get(mid)>mountainArr.get(mid+1)){
                end = mid;
            }
            //We are in increasing part of array -> move right
            else if (mountainArr.get(mid)<mountainArr.get(mid+1)){
                start = mid +1;
            }
        }
        return start;

    }

    static int agonisticSearch (MountainArray mountainArr , int target , int start , int end , boolean isAscending) 
    {
        while (start <= end) {
            int mid = start + (end - start) / 2;
            if (target == mountainArr.get(mid)) { return mid; }

            if (isAscending) {
                if (target > mountainArr.get(mid)) start = mid + 1;
                else end = mid - 1;
            } else {
                if (target > mountainArr.get(mid)) end = mid - 1;
                else start = mid + 1;
            }
        }

        return -1;
    }
}