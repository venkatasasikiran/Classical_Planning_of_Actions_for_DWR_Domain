function state = progression(s,effect)

len_state = length(s);
len_effect = length(effect);
checkings = 0;
state = [];

for i = 1:len_state
    for j = 1:len_effect
        if string(pNot(char(effect(j))))== s(i) && effect(j) ~= ""
            checkings = 0;
            break;
%         elseif effect(j) == ""
%             checkings =0;
%             break;
        else
            checkings = checkings + 1;
            if checkings == len_effect
                state = [state;s(i)];
                checkings = 0;
            end
        end            
    end
end

checkings = 0;

for i = 1:len_effect
    for j = 1:length(state)
        if state(j) == effect(i) && effect(i) ~= "" %
            checkings = 0;
            break;
        elseif effect(i) == ""
            checkings = 0;
            break;
        else
            checkings = checkings + 1;
            if checkings == length(state)
                state = [state;effect(i)];
                checkings = 0;
            end
        end            
    end
end
