function bit_length = calc_optimum_bit_length(run_lengths)
% Calculates the length (in bits) of the optimum binary stream for a given array
% of run-length values, assuming that the run-length values are optimally encoded
% with a binary code.
%
% Inputs:
%   run_lengths: an array of run-length values
%
% Outputs:
%   bit_length: the length (in bits) of the optimum binary stream

% Determine the maximum run length in the input array
max_run_length = max(run_lengths);

% Calculate the number of bits required to represent the maximum run length
max_run_length_bits = ceil(log2(max_run_length + 1)); % add 1 to include zero-length runs

% Calculate the total number of bits required to represent all the run lengths
bit_length = sum(run_lengths) * max_run_length_bits;

end