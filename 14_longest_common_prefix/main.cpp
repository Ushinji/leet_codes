class Solution {
public:
    string longestCommonPrefix(vector<string>& strs) {
        string result = "";
        if(strs.size()  == 0) {
            return result;
        }

        string prefix = strs[0];
        int i = 0;
        while(i < prefix.length()) {
            bool common_flg = true;
            for(int j = 0; j < strs.size(); j++) {
                if(strs[j][i] != prefix[i]) {
                    common_flg = false;
                    break;
                }
            }
            if(!common_flg) {
                break;
            }
            result += prefix[i];
            i++;
        }
        return result;
    }
};
