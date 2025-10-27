% Target angular freq.
wc = 2*pi*(3e3);
% Order of filter.
p = 6;
% Instantiate Butterworth filter.
[B, A] = butter(p, wc, 's');

% Throw poles in an array
poles = roots(A);

% Find angle of poles in radians.
angle(poles)

% How many (1/4)*pi's are these angles
angle(poles)/((1/4)*pi)

% Confirm absolute value of these poles.
abs(poles)