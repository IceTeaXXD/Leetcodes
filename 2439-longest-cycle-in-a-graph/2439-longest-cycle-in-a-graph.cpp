class Solution {
public:
    int longestCycle(vector<int>& edges) {
        int n = edges.size();
        int longest = -1;
        vector<bool> visited(n, false); // keep track of nodes visited
        vector<int> memo(n, 0); // memoization array to store previously computed cycle lengths
        for (int start = 0; start < n; start++) {
            if (!visited[start]) { // if node hasn't been visited yet
                int slow = start, fast = start;
                while (edges[fast] != -1 && edges[edges[fast]] != -1) { // loop until a cycle is found or a dead end is reached
                    slow = edges[slow];
                    fast = edges[edges[fast]];
                    if (slow == fast) { // if a cycle is found
                        int cycleLen = 1;
                        slow = edges[slow];
                        while (slow != fast) { // compute the length of the cycle
                            cycleLen++;
                            slow = edges[slow];
                        }
                        longest = max(longest, cycleLen); // update longest cycle length if necessary
                        memo[start] = cycleLen; // memoize cycle length for future use
                        visited[start] = true; // mark node as visited
                        break;
                    }
                    if (memo[slow] != 0) { // if we've already computed the cycle length for this node
                        memo[start] = memo[slow]; // memoize previously computed cycle length
                        visited[start] = true; // mark node as visited
                        break;
                    }
                }
            }
        }
        return longest;            
    }
};