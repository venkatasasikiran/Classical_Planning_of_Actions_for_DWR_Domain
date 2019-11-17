function predicate = on(k1,k2)

if string(class(k1)) == "container" && string(class(k2))== "container"
     predicate = ['on ' k1.name ' ' k2.name];
 else 
     error('The inputs need to be of  data type robot & LOCATION');
 end