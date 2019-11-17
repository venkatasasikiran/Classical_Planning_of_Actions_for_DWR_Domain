function predicate = belong(k,l)

if string(class(k)) == "crane" && string(class(l))== "location"
     predicate = ['belong ' k.name ' ' l.name];
 else 
     error('The inputs need to be of  data type crane & LOCATION');
 end