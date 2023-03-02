input_seq = [1 1 1 0 0 0 0 1 1 0 0 0 0];
[encoded_seq, start_symbol] = run_length_encode(input_seq);
disp(encoded_seq);
disp(start_symbol);