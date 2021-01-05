class Solution {
public:
    bool isPalindrome(int x) {
        if (x < 0) {
            return false;
        }
        int val = x;
        unsigned int result = 0;
        while(val != 0) {
            result = result * 10 + val % 10;
            val /= 10;
        }
        return result == x;
    }
};
