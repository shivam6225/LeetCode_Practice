class Solution {
    public int search(int[] nums, int target) {
        int pivot = pivotElement(nums);
        int firstIndex = Search(nums,0,pivot,target);
        if (firstIndex!=-1) return firstIndex;
        return Search(nums,pivot+1,nums.length-1,target);
    }

    private static int Search(int[] arr, int start, int end, int target) {
        while(start<=end){
            int mid = start + (end-start)/2;
            if(target>arr[mid]) {
                start=mid+1;
            }
            else if(target<arr[mid]) end=mid-1;
            else{
                return mid;
            }
        }

        return -1;
    }

    static int pivotElement(int[] arr){
        int start =0;
        int end = arr.length -1;

        while(start<=end){
            int mid = start + (end-start)/2;
            //4 cases here
            if(mid<end && arr[mid]>arr[mid+1]) return mid;
            else if(mid>start && arr[mid]<arr[mid-1]) return mid-1;
            else if(arr[start]>=arr[mid]) end=mid-1;
            else if(arr[start]<arr[mid]) start=mid+1;
        }

        return -1;
    }

}

//Approach 2

class Solution {
    public int search(int[] arr, int target) {
        int pivot = pivotElement(arr);
        //If you didn't find pivot that means array is not roated
        if(pivot==-1){
            return Search(arr,0,arr.length-1,target);
        }
        //If pivot is found , we found 2 ascending Sorted Arrays
        if(arr[pivot]==target){
            return pivot;
        }
        //Target bigger than start means in Array 1
        if(target>=arr[0]) return Search(arr,0,pivot,target);
        else return Search(arr,pivot+1,arr.length-1,target);
    }

    private static int Search(int[] arr, int start, int end, int target) {
        while(start<=end){
            int mid = start + (end-start)/2;
            if(target>arr[mid]) {
                start=mid+1;
            }
            else if(target<arr[mid]) end=mid-1;
            else{
                return mid;
            }
        }

        return -1;
    }

    static int pivotElement(int[] arr){
        int start =0;
        int end = arr.length -1;

        while(start<=end){
            int mid = start + (end-start)/2;
            //4 cases here
            if(mid<end && arr[mid]>arr[mid+1]) return mid;
            else if(mid>start && arr[mid]<arr[mid-1]) return mid-1;
            else if(arr[start]>=arr[mid]) end=mid-1;
            else if(arr[start]<arr[mid]) start=mid+1;
        }

        return -1;
    }

}