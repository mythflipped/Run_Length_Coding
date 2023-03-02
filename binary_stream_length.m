function bits = binary_stream_length(run_lengths)
    % Compute the total number of bits in the binary stream
    bits = 0;
    for i = 1:length(run_lengths)
        % Calculate the number of bits required to encode the current run-length value
        bits_required = ceil(log2(run_lengths(i) + 1));
        bits = bits + bits_required;
    end
end