function R0 = R0primer1(beta1, beta2, d, ni, r1, r2, q, b)
p = 1-q;
R0 = beta1 * ni / ((d+ni+r1)*(d+r2)-ni*p*r1);
end