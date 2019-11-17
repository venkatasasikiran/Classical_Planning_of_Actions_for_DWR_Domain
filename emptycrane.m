function predicate = emptycrane(k)

if string(class(k)) == "crane" 
     predicate = ['empty ' k.name];
 else 
     error('The inputs need to be of  data type CRANE');
 end