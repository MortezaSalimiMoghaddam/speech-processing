clc;
close all;

Fs     = 2e8;
cosine = fileread("output_file_cos.txt");
sine   = fileread("output_file_sin.txt");

cosine2 = strsplit(cosine);
sine2   = strsplit(sine);
% cosine2(0) = 0;
% sine2(0)   = 0;
% cosine2(length(cosine2)) = 0;
% sine2(length(cosine2))   = 0;

cos = hex2dec(cosine2(2:length(cosine2) - 1));
sin = hex2dec(sine2(2:length(sine2) - 1));
L   = length(sin);

z   = complex(cos, sin);

figure(1)
plot(linspace(-Fs/2, Fs/2, L), 10*log10(abs(fftshift(fft(z)))));