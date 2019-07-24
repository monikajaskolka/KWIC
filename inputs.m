function lines = inputs(text)
% INPUTS Store input as a cell array of lines.
%
%   Inputs:
%       text        Char array representing newline delimited text or 
%                   a filename containing newline delimited text.
%
%   Outputs:
%       lines       Cell array of char arrays.
%
%   Examples:
%       >> lines = inputs(['Test text here.' newline 'More text.'])
%
%       lines =
%           1x2 cell array
%               {'Test text here.'}    {'More text.'}
%
%
%       >> lines = inputs('example.txt')
%
%       lines =
%           3x1 cell array
%               {'KWIC is an acronym for Key Word In Context'                       }
%               {'Key Word In Context, the most common format for concordance lines'}
%               {'Wikipedia, The Free Encyclopedia'                                 }

    delimiter = newline; % Assume newline as delimiter
    
    if isfile(text)
        fileID = fopen(text, 'r'); 
        lines = textscan(fileID, '%s', 'Delimiter', delimiter);
        lines = lines{:};
        fclose(fileID);
    else
        lines = strsplit(text, delimiter);
    end
end