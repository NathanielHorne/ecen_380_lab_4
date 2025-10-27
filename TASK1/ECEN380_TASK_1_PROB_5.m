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