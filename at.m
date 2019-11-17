function predicate = at(r,l)

if string(class(r)) == "robot" && string(class(l))== "location"
     predicate = ['at ' r.name ' ' l.name];
 else 
     error('The inputs need to be of  data type robot & LOCATION');
 end