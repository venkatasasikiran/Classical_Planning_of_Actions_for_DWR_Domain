function predicate = unloaded(r)

if string(class(r)) == "robot" 
     predicate = ['unloaded ' r.name];
 else 
     error('The inputs need to be of  data type robot');
 end