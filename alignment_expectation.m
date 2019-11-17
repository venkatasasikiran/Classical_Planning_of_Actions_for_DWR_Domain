function expectation = alignment_expectation(expectation,state)

res = size(expectation);
if isempty(expectation) 
    expectation = state;
elseif res(1) == length(state)
    expectation = [state,expectation]; 
elseif res(1) > length(state)
    dummy = state;
    dummy(length(dummy)+1:res(1)) = "";
    expectation = [dummy,expectation]; 
else
    expectation(res(1)+1:length(state),:) = "";
    expectation = [state,expectation];                    
end