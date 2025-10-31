b = [1 -4/3] * -3/4;
a = [1 -3/4];

figure(1)
h = freqz(b , a);
freqz(h)
figure(2)
x = freqz(1, [1 -3/4], 51);
y1 = conv(x , h, 'same');
freqz(x)
figure(3)
freqz(y1)
figure(4)
subplot(1, 2, 1)
stem(ifft(x))
subplot(1, 2, 2)
stem(abs(ifft(y1)))

y2 = conv(y1 , h, 'same');
y = conv(y2 , h, 'same');
 
figure(5)
freqz(y2)

figure(6)
freqz(y)

y1energy = sum(y1.* transpose(y1'));
y2energy = sum(y2.* transpose(y2'));
yenergy = sum(y.*transpose(y'));