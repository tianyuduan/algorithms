Tree represents the nodes connected by edges.

Binary tree have a special condition that each node can have a maximum of two children

Binary search trees - A node's left child must have a value less than its parent's value and the node's right child must have a value greater than its parent value.

```
struct node {
   int data;   
   struct node *leftChild;
   struct node *rightChild;
};
```


Take away Note:
BFS - All connection at one time
Queue

DFS - 1 connection at one time
Stack

Complete Binary Trees:
every level of tree is filled, with perhaps the last level. The last level is filled, from left to right

Full Binary Trees:
every node either zero or two children

Perfect Binary Trees:
both full and complete

In order traversal - left branch, current node and right branch

if (node != null){
  inorder_traversal(node.left)
  visit(node)
  inorder_traversal(node.right)
}

pre order traversal - visits node, left branch, then right branch

if (node != null){
  visit(node)
  inorder_traversal(node.left)
  inorder_traversal(node.right)
}

post order traversal -  left branch, right branch, node

if (node != null){
  inorder_traversal(node.left)
  inorder_traversal(node.right)
  visit(node)
}

Binary Heaps(Min-heaps and Max-heaps)
min-heap is a complete binary tree
the root is in the minimum element of the tree
look into a bit more *

Depth first Search() ##preorder and other forms are a type of DFS

void Search(Node root) {
  if (root == null) return;
  visit(root);
  root.visited = true;
  for each (Node n in root.adjacent){
    if (n.visited == false){
      search(n);
    }
  }
}

BFS(uses a queue)

Void search(Node root){
  Queue queue = new Queue();
  root.marked = true;
  queue.enqueue(root) //add end of queue

while( !queue.isEmpty()){
    Node r = queue.dequeue(); //Remove from front of queue
    visit(r);
    foreach (node n in r.adjacent){
      if (n.marked == false){
        n.marked = true;
        queue.enqueue(n);
      }
    }
  }
}

With Tree Traversal-

Breadth first traversal
-> level by level
Left to right across a level, or, right to left across a level

PsuedoCode

BFS(G, S) //G is graph, S is root node

let Q be queue
Q.enqueue(s) //Inserting s in queue until all its neighbour vertices are marked.

Mark s as visited.
    while ( Q is not empty)
         //Removing that vertex from queue,whose neighbour will be visited now
         v  =  Q.dequeue( )

        //processing all the neighbours of v  
        for all neighbours w of v in Graph G
             if w is not visited
                      Q.enqueue( w )             //Stores w in Q to further visit its neighbour
                      mark w as visited.



Depth First traversal
-> Go as deep as possible before going along a level
– preorder, inorder, postorder – each going clockwise or anticlockwise
around the tree

https://www.tutorialspoint.com/data_structures_algorithms/images/inorder_traversal.jpg


In-order traversal

      Root A
        ^
    B       C
    ^       ^  
 D    E   F   G

D → B → E → A → F → C → G

Step 1 − Recursively traverse left subtree.
Step 2 − Visit root node.
Step 3 − Recursively traverse right subtree.

Pre-order traversal

          Root A
            ^
        B       C
        ^       ^  
     D    E   F   G
