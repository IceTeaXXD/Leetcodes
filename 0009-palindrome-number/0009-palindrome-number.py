class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        y = str(x)
        if str(x) == y[::-1]:
            return True
        else:
            return False