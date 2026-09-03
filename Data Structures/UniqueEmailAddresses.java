class Solution {
    public int numUniqueEmails(String[] emails) {
        Set <String> UniqueEmails = new HashSet<>();
        
        for (String email : emails){
            
            String[] emailParts = email.split("@");
            String local = emailParts[0];
            String domain = emailParts[1];
            
            StringBuilder normalizedLocal = new StringBuilder();
            for (char ch: local.toCharArray()){
                if (ch == '.')
                    continue;
                if (ch == '+')
                    break;
                normalizedLocal.append(ch);
            }
            
            UniqueEmails.add(normalizedLocal.toString()+"@"+domain);
            
        }
        
        return UniqueEmails.size();
    }
}