class Solution {
    public List<Integer> addToArrayForm(int[] num, int k) {
        List<Integer> sum = new LinkedList<>();
        int number =0;
        for(int i=num.length-1;i>=0;i--){
            sum.add(0,(num[i]+k)%10);
            k=(num[i]+k)/10;
        }
        
        while(k>0){
            sum.add(0,k%10);
            k/=10;
        }

        return sum;
    }
}