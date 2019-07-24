function shifts = KWICmaster(varargin)
% Key Word In Context (KWIC) system as described by David L. Parnas in his paper
% "On the Criteria To Be Used in Decomposing Systems into Modules" (1972):
%
% "The KWIC index system accepts an ordered set of lines,
% each line is an ordered set of words, and each word is an ordered set
% of characters. Any line may be "circularly shifted" by repeatedly
% removing the first word and appending it at the end of the line.
% The KWIC index system outputs a listing of all circular shifts of all lines
% in alphabetical order."
%
%   Inputs:
%       varargin{1}     Char array of text, delimited with newlines, or the filename
%                       of a .txt file containing text delimited with newlines.
%
%   Outputs:
%       shifts          Cell array of all circular shifts, ordered alphabetically.
%
%   Examples:
%       >> KWICmaster;
%           acronym for Key Word In Context KWIC is an
%           an acronym for Key Word In Context KWIC is
%           common format for concordance lines Key Word In Context, the most
%           Context, the most common format for concordance lines Key Word In
%           ...
%
%       >> KWICmaster(['The Modular Structure of Complex Systems', newline, 'Software Structures: A Careful Look']);
%           A Careful Look Software Structures:
%           Careful Look Software Structures: A
%           Complex Systems The Modular Structure of
%           Look Software Structures: A Careful
%           ...

    if ~isempty(varargin)
        % Use user input text or filename
        text = varargin{1};
    else
        % Use example text
        text = ['KWIC is an	acronym for Key Word In Context', newline ...
            'Key Word In Context, the most	common format for concordance lines', newline ...
            'Wikipedia, The Free Encyclopedia'];
    end

    lines = inputs(text);
    shifts = circularshift(lines);
    shifts = alphabetizer(shifts);
    outputs(shifts);
end