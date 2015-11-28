
clear;
clc;
% load 'MP5_1.mat';
% t = zeros(4,length(r));
% Nt = 4;
% Es = 1;
sets = {[1 1i -1i -1],[1 1i -1i -1]};
[x, y] = ndgrid(sets{:});
cartProd = [x(:) y(:)];
s = sortrows(cartProd, 1:numel(sets));
H_s = sqrt(Es/Nt)*H*s';
for i = 1:length(r)
    tmp = repmat(r(:,i),1,16) - H_s;
    [val, ind] = min(diag(tmp'*tmp));    
    t(:,i) = s(ind,:)';    
end
       