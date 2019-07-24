function lines = inputs(text)
% INPUTS Store input as cell array of lines.
%
%   Inputs:
%       text        Char array.
%
%   Outputs:
%       lines       Cell array of char arrays.
%
%   Example:
%       >> lines = inputs(['Test text here.' newline 'More text.'])
%
%       lines =
%           1x2 cell array
%               {'Test text here.'}    {'More text.'}

    delimiter = newline; % Assume newline as delimiter
    lines = strsplit(text, delimiter);
end