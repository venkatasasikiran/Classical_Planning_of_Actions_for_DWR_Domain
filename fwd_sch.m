function [plan,expectation] = fwd_sch(init,goal,loc,r,c,cr,p)

ss = searchNode;

%% initial seach node initialization
ss(1).state = init;
ss(1).predecessor = 0;
ss(1).action = "";
ss(1).depth = 0;
ss(1).ID = 1;

%%
plan = [];
expectation = [];
z = [];
dep = 0;
exit_status = false;
start = 1;
dead_state = 0;
%%
while true
    for i = start : length(ss)
        if ss(i).depth == dep
            z = [z,i];
        end
    end
    dep = dep+1;
    for i = z(1,:)
        if check_goal_current(ss(i).state,goal)
            disp('goal reached');            
            loop = ss(i).ID;
            while loop ~= 1
                plan = [ss(loop).action,plan];                
                expectation = alignment_expectation(expectation,ss(loop).state);
                loop = ss(loop).predecessor;
            end
            exit_status = true;
            break;            
        else
            [actions,effects] = applicable(loc,r,c,cr,p,ss(i).state);
            if isempty(actions) || isempty(effects)
                dead_state = dead_state+1;                
            else
                pred = ss(i).ID;
                k = length(ss);
                for j = 1: length(actions)            
                   ss(k+j).state = progression(ss(i).state,effects(:,j));
                   ss(k+j).predecessor = pred;
                   ss(k+j).action = actions(j);
                   ss(k+j).depth = dep;
                   ss(k+j).ID = k+j;               
                end
                dead_state = 0;
            end
         end
    end
    if exit_status
         break;
    end
    if dead_state == length(z)
        error('failure to find applicable actions');        
    end
    start = z(end)+1;     
end
        
