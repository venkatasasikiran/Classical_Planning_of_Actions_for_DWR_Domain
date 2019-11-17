function [actions,effects] = applicable(loc,r,c,cr,p,s)

actions = [];
effects = [];

%% actionMove
for i = 1:length(loc)
    for j = 1:length(loc)
        for k = 1:length(r)
            [precondition,effect,name] = actionMove(r(k),loc(j),loc(i));
            if check_precondition(precondition,s)
                actions = [actions,name];
                effects = alignment_effects(effects,effect);
            end
        end
    end
end
%% actionTake
for m = 1:length(loc)
    for l = 1:length(p)
        for i = 1:length(c)
            for j = 1:length(c)
                for k = 1:length(cr)
                    [precondition,effect,name] = actionTake(cr(k),c(j),c(i),p(l),loc(m));
                    if check_precondition(precondition,s)
                        actions = [actions,name];
                        effects = alignment_effects(effects,effect);      
                    end
                end
            end
        end
    end
end

%% actionLoad
for l = 1:length(loc)
    for i = 1:length(r)
        for j = 1:length(c)
            for k = 1:length(cr)
                [precondition,effect,name] = actionLoad(cr(k),c(j),r(i),loc(l));
                if check_precondition(precondition,s)
                    actions = [actions,name];
                    effects = alignment_effects(effects,effect);
                end
            end
        end
    end
end
