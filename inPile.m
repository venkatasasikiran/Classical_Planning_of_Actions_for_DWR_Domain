function predicate = inPile(c,p)

if string(class(c)) == "container" && string(class(p))== "pile"
     predicate = ['in ' c.name ' ' p.name];
 else 
     error('The inputs need to be of  data type CONTAINER & LOCATION');
 end