% Generate Markov-1 source strings for different values of alpha
alphas = 0.05:0.05:0.95;
L = 19600;
source_strings = cell(1, length(alphas));
for i = 1:length(alphas)
    source_strings{i} = generate_markov1_binary_string(L, alphas(i));
end

% Compress each source string using run-length encoding
compressed_strings = cell(1, length(alphas));
for i = 1:length(alphas)
    compressed_strings{i} = run_length_encode(source_strings{i});
end

% Compute compression ratio for each source string
compression_ratios = zeros(1, length(alphas));
for i = 1:length(alphas)
    compression_ratios(i) = length(source_strings{i}) / length(compressed_strings{i});
end

% Plot compression ratios versus alphas
figure;
plot(alphas, compression_ratios);
xlabel('Alpha');
ylabel('Compression Ratio');
title('Compression Ratios of Markov-1 Source Strings');

% Plot pmf of run-length values for alpha = 0.05, 0.5, and 0.95
% figure;
% subplot(1, 3, 1);
% plot_pmf(run_length_encode(generate_markov1_binary_string(L, 0.05)));
% title('PMF of Run-Length Values for Alpha = 0.05');
% subplot(1, 3, 2);
% plot_pmf(run_length_encode(generate_markov1_binary_string(L, 0.5)));
% title('PMF of Run-Length Values for Alpha = 0.5');
% subplot(1, 3, 3);
% plot_pmf(run_length_encode(generate_markov1_binary_string(L, 0.95)));
% title('PMF of Run-Length Values for Alpha = 0.95');


 % Plot pmf of run-length values for alpha = 0.05, 0.5, and 0.95
    alphas = [0.05, 0.5, 0.95];
    figure;
    for i = 1:length(alphas)
        alpha = alphas(i);
        source_stream = generate_markov1_binary_string(19600, 1-alpha);
        [encoded_seq, start_symbol] = run_length_encode(source_stream);
        [pmf, values] = empirical_pdf(encoded_seq);
        subplot(1, 3, i);
        bar(values, pmf);
        title(['Alpha = ', num2str(alpha)]);
        xlabel('Run-Length');
        ylabel('Probability');
    end