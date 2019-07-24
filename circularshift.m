function allshifts = circularshift(lines)
% CIRCULARSHIFT Get all circular shifts of all lines.
%
%   Inputs:
%       lines       Cell array of char arrays.
%
%   Outputs:
%       allshifts   Cell array of char arrays.
%
%   Example:
%       >> shifts = circularshift({'This is a test.', 'More text.'})
%
%       shifts =
%           1x6 cell array
%               {'This is a test.'}    {'is a test. This'}    {'a test. This is'}    {'test. This is a'}    {'More text.'}    {'text. More'}

    allshifts = {};
    for i = 1:length(lines)
        line = lines{i};
        words = strfind(line, ' ');

        % For each word
        for pos = 1:length(words)+1
            allshifts{end + 1} = shiftline(line, pos);
        end
    end 
end

function shift = shiftline(line, pos)
% SHIFTLINE Shift line to specific position.
%
%   Inputs:
%       line    Char array.
%       pos     Shift position.
%
%   Outputs:
%       shift   Char array.
%
%   Example:
%       >> shift = shiftline('This is a test.', 3)
%
%       shift =
%           'a test. This is'

    shift = '';

    words = strsplit(line);
    n = length(words);

    pos = mod(pos, n);
    if pos == 0
        pos = n;
    end
    
    for j = 1:n    
        shift = [shift words{pos}];
        shift = [shift ' '];
        if pos == n
            pos = 1; % Start at beginning
        else
            pos = pos + 1;
        end
    end
    shift = shift(1:end-1); % Remove last space
end