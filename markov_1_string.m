function string = markov_1_string(alpha, L)
% Generate Markov-1 character string of 0s and 1s
% Inputs:
%   alpha: probability of transitioning from 0 to 1 (and from 1 to 0)
%   L: length of string
% Output:
%   string: generated character string

string = '';
state = rand() < 0.5;
for i = 1:L
    string = strcat(string, num2str(state));
    if rand() < alpha
        state = 1 - state;
    end
end
end