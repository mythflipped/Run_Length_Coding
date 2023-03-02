function markov1_binary_string = generate_markov1_binary_string(L, alpha)
% GENERATE_MARKOV1_BINARY_STRING generates a Markov-1 character string of 0s and 1s.
% Inputs:
%   L: the length of the output binary string
%   alpha: the probability of transitioning from a 0 to a 1 (or from a 1 to a 0)
% Outputs:
%   markov1_binary_string: the generated binary string

beta = alpha; % assume beta equals alpha
state = randi([0, 1]); % randomly initialize state
markov1_binary_string = zeros(1, L); % initialize output binary string
for i = 1:L
    markov1_binary_string(i) = state;
    if rand < alpha
        state = mod(state + 1, 2); % transition to opposite state with probability alpha
    end
end

end