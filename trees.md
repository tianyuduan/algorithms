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
