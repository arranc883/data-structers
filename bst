#insertion
class tree():
    def __init__(self,value=None):
        self.value=value #paramiter that is given
        if self.value:
            self.left=tree()
            self.right=tree()
        else:
            self.left=None
            self.right=None
    def is_empty(self):
        return self.value==None
    
    def insert(self,data):#data is number to be inserted into a pre-defined tree.
        if self.is_empty():
            self.value=data
            self.left=tree()
            self.right=tree()
            print(f'{self.value} has been sucsesfully inserted')
        elif data<self.value:
            return self.left.insert(data)
        elif data>self.value:
            return self.right.insert(data)
        elif data==self.value:
            return
    def search(self,data):
        if self.is_empty():
            print('the value is not found')
            return False
        
        if self.value==data:
            print(f'the value is found {data}')
            return False
        
        if data<self.value:
           return self.left.search(data)

        if data>self.value:
           return self.right.search(data)
    
    def inorder_traversal(self):
        if self.is_empty():
            return []
        else:
            return self.left.inorder_traversal()+[self.value]+self.right.inorder_traversal()
        
    def leaf(self):
        if self.left==None and self.right==None:
            return True
        else:
            return False
    def max_val(self):
        if self.right.right==None:
            return self.value
        else:
            return self.right.max_val()
    def delete(self,data):
        if self.is_empty():
            return
        
        if data<self.value:
            self.left.delete(data)
            return

        if data>self.value:
            self.right.delete(data)
            return
        
        if data==self.value:
            if self.leaf():
                self.value=None
                self.left=None
                self.right=None
                return
            elif self.left.is_empty():
                self.value=self.right.value
                self.left=self.right.left
                self.right=self.right.right
                return 
            else:
                self.value=self.left.max_val()
                self.left.delete(self.left.max_val())
                return
                



bst=tree(2)  
#2 == root

bst.insert(9)
bst.insert(1)
bst.insert(3)
bst.insert(2)

bst.search(1)
print(bst.inorder_traversal())

bst.delete(9)
print(bst.inorder_traversal())
