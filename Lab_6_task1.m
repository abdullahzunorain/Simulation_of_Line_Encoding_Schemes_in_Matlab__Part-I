clc
clear all
% original message
message = [0 1 1 0 1 0 1];
% message with redundant information at even locations
data = [0 0 1 0 1 0 0 0 1 0 0 0 1 0];
% index 'i' keeps track of message in data, while index 'j' keeps
% track of redundant information
i = 1:7;
j = 1.99:7.99;
% generate timing information for plotting digital signal
tim = [];
for(k = 1:7)
tim = [tim i(k) j(k)];
end
% logic for generating digital signal
signal = [];
for(t=1:2:13)
if(data(t)==0)
signal(t:t+1) = 0;
else
signal(t:t+1) = -1;
end
end
% plot signal w.r.t timing information
figure(1);
plot(tim,signal, 'lineWidth', 2)
title('Unipolar Encoded Signal')
xlabel('Number of bits per second')
ylabel('Voltage Levels')
