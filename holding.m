function predicate = holding(k,c)

if string(class(k)) == "crane" && string(class(c))== "container"
     predicate = ['holding ' k.name ' ' c.name];
 else 
     error('The inputs need to be of  data type crane & container');
 end