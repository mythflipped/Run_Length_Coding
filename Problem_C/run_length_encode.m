function [encoded_seq, start_symbol] = run_length_encode(input_seq)
% RUN_LENGTH_ENCODE encodes a binary input sequence using run-length encoding.
% Inputs:
%   input_seq: a binary input sequence
% Outputs:
%   encoded_seq: the run-length encoded sequence
%   start_symbol: the starting symbol of the input sequence (0 or 1)

% Determine the starting symbol of the input sequence
start_symbol = input_seq(1);

% Initialize variables
count = 1;
encoded_seq = [];

% Loop through the input sequence and count the length of each run
for i = 2:length(input_seq)
    if input_seq(i) == input_seq(i-1)
        count = count + 1;
    else
        encoded_seq = [encoded_seq, count];
        count = 1;
    end
end

% Append the last run to the encoded sequence
encoded_seq = [encoded_seq, count];

end