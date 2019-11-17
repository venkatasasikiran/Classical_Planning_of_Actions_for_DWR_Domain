function predicate = occupied(l)

if string(class(l))== "location"
     predicate = ['occupied ' l.name];
 else 
     error('The inputs need to be of  data type LOCATION');
 end