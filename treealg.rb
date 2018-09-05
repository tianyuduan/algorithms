Find Largest Value in Each Tree Row
You need to find the largest value in each row of an n-ary tree.
Example:
Input:             1        
                / \ \       
              3   2  12       
             / \   \   \       
            5   3   9   7  

Output: [1, 12, 9]
/**
 * Definition for a tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.children = null;
 * }
 */
 
## approach would to be use BFS
## search each level
## push the largest of each level into an array
## return array
 
 
 
 
 
Def BFS_largest(root)
Depth = 0;
Queue =[]
Queue.push([root, Depth])
return_Array = [0, 1, 2]


const largestValues = function(root) {
   if(root === null) return []
   let queue = [[root, 0]];
   let largest = {}
   while(queue.length > 0) {
       let curr = queue.pop();
       // console.log(curr)
       if (curr[0].left !== null) queue.push([curr[0].left, curr[1] + 1])
       if (curr[0].right !== null) queue.push([curr[0].right, curr[1] + 1])
       if (largest[curr[1]] === undefined) {
           largest[curr[1]] = curr[0].val
       } else if (largest[curr[1]] < curr[0].val) {
           largest[curr[1]] = curr[0].val
       }
   }
   return Object.values(largest);
};
