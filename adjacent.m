function predicate = adjacent(l1,l2)

 if string(class(l1)) == "location" && string(class(l2))== "location"
     predicate = ['adjacent ' l1.name ' ' l2.name];
 else 
     error('The inputs need to be of  data type LOCATION');
 end
 