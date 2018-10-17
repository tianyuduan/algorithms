DFS/BFS:

good for trees, graphs, matrixes

Learn Iterative first:

const BFS(root) => {
let queue = [root];

while(queue.length > 0){
    let curr = queue.shift(); //manipulation occurs here
    queue.push(current.left);
    queue.push(current.right);
  }
}

BSQ

const DFS(root) => {
let stack = [root];

while(stack.length > 0){
    let curr = stack.pop(); //manipulation occurs here
    stack.push(current.left);
    stack.push(current.right);
  }
}

find relation between iterative vs recursive version
