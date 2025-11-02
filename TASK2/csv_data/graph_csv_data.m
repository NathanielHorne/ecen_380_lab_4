data = readtable("fhltered_data.csv");

x = data.Var1;
y = data.Var2;

figure;
plot(x,y);
grid on;
xlabel('Time');
ylabel('Amplitude');
title('Amplitude of graph vs. time on a 20 Hz - 20 kHz sweep');

%% Freq. Domain

%x_freq = ((mod(x*100,500) + 24) * ((20e3 - 20)/(500))) + 20;
y_freq = data.Var2(472:971);
x_freq = linspace(20,20e3,500);
t = linspace(0,500,500);

Y = fft(y_freq);

plot(x_freq', y_freq/(sin(x_freq'*2*pi+5.3)));
hold on;
plot(x_freq', y_freq/(sin(x_freq'*2*pi)));
hold off;

%plot(100/500*(0:499),abs(Y));

%% Freqs.


