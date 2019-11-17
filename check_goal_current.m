function truth = check_goal_current(s,g)

len_state = length(s);
len_goal = length(g);
findings = 0;
iter = 1;
n = 1;
while n <= len_state && findings < len_goal
    if s(n)== g(iter)
        findings = findings+1;
        iter = iter+1;
        n = 1;
    else 
        n = n+1;
    end
end
if findings == len_goal
    truth = true;
else
    truth = false;
end

