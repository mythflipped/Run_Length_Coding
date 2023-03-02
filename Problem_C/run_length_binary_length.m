function binary_length = run_length_binary_length(run_lengths)
% RUN_LENGTH_BINARY_LENGTH calculates the length (in bits) of a binary stream
% representing a run-length encoded sequence.
% Inputs:
%   run_lengths: the run-length encoded sequence
% Outputs:
%   binary_length: the length (in bits) of the binary stream

% Initialize binary length
binary_length = 0;

% Loop through the run-length values and add their binary lengths
for i = 1:length(run_lengths)
    binary_length = binary_length + ceil(log2(run_lengths(i)));
end

end