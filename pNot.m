function predicate = pNot(f)

if startsWith(string(f),"not",'IgnoreCase',true)
   predicate = char(extractBetween(string(f),"(",")"));
else
    predicate = ['not(' f ')'];
end

