class Solution {
    public boolean checkIfPangram(String sentence) {
        int[] chCount = new int[26];

        for(char ch : sentence.toCharArray()) chCount[ch-'a']++;

        for(int num : chCount){
            if(num==0) return false;
        }

        return true;
    }
}