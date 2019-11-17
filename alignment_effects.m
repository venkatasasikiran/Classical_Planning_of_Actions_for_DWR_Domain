function effects = alignment_effects(effects,effect)

res = size(effects);
if isempty(effects) 
    effects = effect;
elseif res(1) == length(effect)
    effects = [effects,effect]; 
elseif res(1) > length(effect)
    effect(length(effect)+1:res(1)) = "";
    effects = [effects,effect]; 
else
    effects(res(1)+1:length(effect),:) = "";
    effects = [effects,effect];                    
end
