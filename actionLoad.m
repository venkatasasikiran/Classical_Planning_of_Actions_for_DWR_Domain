function [precondition,effect,name] = actionLoad(k,c,r,l)

precondition = [string(belong(k,l));string(at(r,l));string(holding(k,c));string(unloaded(r))];
effect = [string(loaded(r,c));string(pNot(unloaded(r))); string(emptycrane(k)); string(pNot(holding(k,c)))];
name = string(['load ' k.name ' ' c.name ' ' r.name ' ' l.name]);