wc = 2*pi*(3e3);
p = 6;
[B, A] = butter(p, wc, 's');

poles = roots(A);

angle(poles)

angle(poles)/((1/4)*pi)

abs(poles)