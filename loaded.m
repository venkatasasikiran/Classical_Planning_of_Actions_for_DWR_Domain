function predicate = loaded(r,c)

if string(class(r)) == "robot" && string(class(c))== "container"
     predicate = ['loaded ' r.name ' ' c.name];
 else 
     error('The inputs need to be of  data type robot & LOCATION');
 end