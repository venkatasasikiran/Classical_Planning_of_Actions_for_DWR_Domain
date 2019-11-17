function [precondition,effect,name] = actionMove(r,from,to)

precondition = [string(adjacent(from,to));string(at(r,from));string(pNot(occupied(to)))];
effect = [string(at(r,to));string(pNot(occupied(from))); string(occupied(to)); string(pNot(at(r,from)))];
name = string(['move ' r.name ' ' from.name ' ' to.name]);