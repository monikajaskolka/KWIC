function alist = alphabetizer(list)    
% ALPHABETIZER Sort alphabetically.
%
%   Inputs:
%       list    Cell array.
%
%   Outputs:
%       alist   Alphabetized cell array.
%
%   Example:
%       >> shifts = alphabetizer({'text. More', 'More text.'})
%
%       shifts = 
%           1x2 cell array
%               {'More text.'}    {'text. More'}

    [~, idx] = sort(upper(list));
    alist = list(idx);
end