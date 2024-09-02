class tree():
    def __init__(self,data):
        self.data=data
        self.left_child=None
        self.right_child=None
    
root=tree(123)
root.left_child=tree(312)
root.right_child=tree(213)
root.left_child.left_child=tree(231)
root.left_child.right_child=tree(132)
root.right_child.left_child=tree(456)
root.right_child.right_child=tree(654)


def inorder_traversal(node):
    if node is not None:
        inorder_traversal(node.left_child)
        print(node.data)
        inorder_traversal(node.right_child)

def preorder_traversal(node):
    if node is not None:
        print(node.data)
        preorder_traversal(node.left_child)
        preorder_traversal(node.right_child)

def postorder_traversal(node):
    if node is not None:
        postorder_traversal(node.left_child)
        postorder_traversal(node.right_child)
        print(node.data)
def menue():
    preferance=input('1) inorder 2)preorder 3) postorder ')
    if preferance=='inorder':
       inorder_traversal(root) 
    elif preferance=='preorder':
        preorder_traversal(root)
    elif preferance=='postorder':
        postorder_traversal(root)
    else:
        print('please give a valid option! ')

menue()

