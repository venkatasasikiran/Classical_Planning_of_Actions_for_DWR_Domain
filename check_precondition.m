function truth = check_precondition(precondition,s)

len_state = length(s);
len_precondition = length(precondition);
findings = 0;
iter = 1;
n = 1;
while n <= len_state && findings < len_precondition
    if s(n)== precondition(iter)
        findings = findings+1;
        iter = iter+1;
        n = 1;
    else 
        n = n+1;
    end
end
if findings == len_precondition
    truth = true;
else
    truth = false;
end
