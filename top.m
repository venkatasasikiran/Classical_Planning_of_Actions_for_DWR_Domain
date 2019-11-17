function predicate = top(c,p)

if string(class(c)) == "container" && string(class(p))== "pile"
     predicate = ['top ' c.name ' ' p.name];
 else 
     error('The inputs need to be of  data type container & pile');
 end