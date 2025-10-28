%% H1(s)

H1_num = [0, 0, 3.5531e8];
H1_den = [1, 1.4427e4, 3.5531e8];

figure;
zplane(H1_num,H1_den);
title("H1(s)");
grid on;

%% H2(s)

H2_num = [0, 0, 3.5531e8];
H2_den = [1, 3.4830e4, 3.5531e8];

figure;
zplane(H2_num,H2_den);
title("H2(s)");
grid on;

%% Both convolved
H_combined_num = conv(H1_num, H2_num);
H_combined_den = conv(H1_den, H2_den);

figure;
zplane(H_combined_num,H_combined_den);
title("Both Functions Convolved");
grid on;

%% Finding the roots
combined_roots = roots(H_combined_den);

% Display the angle of the roots of the combined denominator
disp('Angle of the roots of the combined denominator:');
disp(angle(combined_roots));

% Display the absolute value of the roots of the combined denominator
disp('Absolute value of the roots of the combined denominator:');
disp(abs(combined_roots));

%% Bode Plot

% Starts a figure
figure;
% Creates a logarithmic space from 0 - 10kHz with 600 steps
f = logspace(0, 4, 600);
% Calculates frequency response of transfer function
% Saves resultant response to "H" and angular frequency to "w"
[H,w] = freqs(H_combined_den, H_combined_num, 2*pi*f);
% Instantiates the X axis as a semilog axis, plotting log value of "H"
semilogx(f, 20*log10(abs(H)))
% Sets y range from -10 to 40
ylim([-10 40]);
% Sets title
title("Frequency Response of System from 0Hz to 10KHz");
% Sets x label
xlabel('Frequency in Hz');
% Sets y label
ylabel('Magnitude response in dB');
% Turns semilog grid on.
grid on;