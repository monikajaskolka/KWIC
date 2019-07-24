function outputs(list)
% OUTPUTS Print to command window.
%
%   Inputs:
%       list    Cell array of chars.
%
%   Outputs:
%       N/A

   for i = 1:length(list)
      fprintf('%s\n', list{i});
   end
end