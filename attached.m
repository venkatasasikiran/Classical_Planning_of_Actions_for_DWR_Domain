function predicate = attached(p,l)

if string(class(p)) == "pile" && string(class(l))== "location"
     predicate = ['attached ' p.name ' ' l.name];
 else 
     error('The inputs need to be of  data type PILE & LOCATION');
 end