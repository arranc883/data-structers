class stack:
    def __init__(self):
        self.sheets=[]
    def empty(self):
        return len(self.sheets)==0
    def push(self,item):
        #add element  to the top of the stack
        self.sheets.append(item)
    def pop(self):
        #remove and return elemnt from top of the stack
        if not self.empty():
            return self.sheets.pop()
        else:
            print('pop being attempted from a empty stack!')
        
    def top(self):
         #return a elemnt from the top of the stack
         if not self.empty():
             return self.sheets[-1]
         else:
             print('empty stack')
    def size(self):
        print(len(self.sheets))

sheet=stack()
a=int(input('how many digits would you like to add the stack: '))
for x in range(a):
    b=int(input('enter a number: '))
    sheet.push(b)
print(sheet.sheets)




