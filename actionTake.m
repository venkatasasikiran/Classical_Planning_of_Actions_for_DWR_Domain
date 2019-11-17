function [precondition,effect,name] = actionTake(k,c,d,p,l)

precondition = [string(emptycrane(k));string(belong(k,l));string(attached(p,l));string(top(c,p));string(on(c,d))];
effect = [string(holding(k,c));string(pNot(top(c,p))); string(pNot(emptycrane(k))); string(pNot(inPile(c,p)));string(pNot(on(c,d)));string(top(d,p))];
name = string(['take ' k.name ' ' c.name ' ' d.name ' ' p.name ' ' l.name]);