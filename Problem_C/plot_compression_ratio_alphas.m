function plot_compression_ratio_alphas(L, alphas)
% PLOT_COMPRESSION_RATIO_ALPHAS generates and compresses Markov-1 binary strings
% for various values of alpha, and plots the compression ratio.
% Inputs:
%   L: the length of the binary strings to generate
%   alphas: the values of alpha to use
% Outputs:
%   (none)

compression_ratios = zeros(size(alphas));
for i = 1:length(alphas)
    % Generate Markov-1 binary string
    markov1_binary_string = generate_markov1_binary_string(L, alphas(i));

    % Compress with run-length encoding
    [run_lengths, start_symbol] = run_length_encode(markov1_binary_string);
    binary_length = run_length_binary_length(run_lengths);

    % Calculate compression ratio
    source_length = L;
    code_length = binary_length + 1; % account for starting symbol
    compression_ratios(i) = source_length / code_length;
end

figure;
plot(alphas, compression_ratios);
xlabel('\alpha');
ylabel('Compression Ratio');
title('Compression Ratio vs. \alpha');