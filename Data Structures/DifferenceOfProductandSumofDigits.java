class Solution {
    public int subtractProductAndSum(int n) {

        int sum =0 , product =1;
        while(n>0){
            int rem = n%10;
            product *=rem;
            sum +=rem;
            n /=10;
        }

        return product-sum;
        
    }
}