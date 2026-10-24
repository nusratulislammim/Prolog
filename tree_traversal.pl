tree(a, b, c).
tree(b, d, e).
tree(c,nil,nil).
tree(d, nil, nil).
tree(e, nil, nil).


inorder(nil).
inorder(Node):-
    tree(Node, Left, Right),
    inorder(Left),
    write(Node),
    write(' '),
    inorder(Right).


preorder(nil).
preorder(Node):-
    tree(Node, Left,Right),
    write(Node),
    write(' '),
    preorder(Left),
    preorder(Right).


postorder(nil).
postorder(Node):-
    tree(Node,Left,Right),
    postorder(Left),
    postorder(Right),
    write(Node),
    write(' ').