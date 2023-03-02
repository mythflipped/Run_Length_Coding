function [pmf, values] = empirical_pdf(x)
    % Calculate the empirical probability density function (pdf) of a sample x
    x = x(:);
    values = unique(x);
    pmf = histc(x, values) / length(x);
end