function length = optimum_binary_stream_length(run_lengths)
% Calculates the length of the optimum binary stream
% for a given array of run-length values
% Input:
%   - run_lengths: array of run-length values
% Output:
%   - length: the length of the optimum binary stream

% Calculate the probabilities of each run-length value
run_length_probs = histc(run_lengths, unique(run_lengths)) / length(run_lengths);

% Calculate the entropy of the run-length distribution
run_length_entropy = -sum(run_length_probs .* log2(run_length_probs));

% Calculate the length of the optimum binary stream
length = run_length_entropy * length(run_lengths);

end