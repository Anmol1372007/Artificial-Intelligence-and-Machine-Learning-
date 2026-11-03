def unify(x,y):
    if x == y :
        return
    if x.islower():
        return{ x,y}
    if y.islower():
        return{y,x}
    return none



print (unify('x','Ram')) #output -  {'x', 'Ram'}

print (unify('A','A')) #output - None 

print (unify('x','y'))  #output -  {'y', 'x'}

