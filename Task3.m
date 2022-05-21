clear all
clc
%%%%%TASK1%%%%%
%reading the csv files
x=csvread('x.csv');
y=csvread('y.csv');
m=csvread('a.csv');
n=csvread('b.csv');

%plot values for the above files
%plot(x, y, 'xb');
%hold;
%plot(m, n, 'g');

noise_x = m-x;
noise_y = n-y;
mean(noise_x)
mean(noise_y)
std(noise_x)
std(noise_y)

% by plotting histogram figure for noise_x and noise_y
histogram(noise_x,6)
histogram(noise_y,6)

%plotting
%plot(x, y, 'xb');
%hold;
%plot(m, n, 'g');
%title('real and noisy one coordinates values')

%task2 begins
%using kalman tracking 
z=[m;n]
[px, py] = kalmanTracking(z)

nnoise_x = px-x;
nnoise_y = py-y;
mean(noise_x)
mean(noise_y)
plot(x, y, 'xb');
hold on
plot(m, n, 'g');
hold off

plot(x,y, 'xb', px, py, 'g', m,n,'oy');
legend({'x,y = real co-ord(x,y)','px,py = estimated co-ord(x,y)','m,n = noisy co-ord(a,b)'}, 'Location', 'northwest')


% Calculate the mean,standard dev for absolute error and Root-mean-squared
% error for estimated co-ord

Std_dev_absolute_error = sqrt( ((x-px).^2) + ((y-py).^2) )
RMS_error = rms(Std_dev_absolute_error)

% Calculating the mean and standard deviation of absolute error and Root mean squared error for Noisy Co-ordinates value

Std_dev_absolute_error_Noisy = sqrt( ((x-m).^2) + ((y-n).^2) )
RMS_error_Noisy = rms(Std_dev_absolute_error_Noisy)
plot(Std_dev_absolute_error,'xb')
%legend('standard deviation of estimated co-ordinates')
hold on
plot(Std_dev_absolute_error_Noisy,'g')
%egend('standard deviation of Noisy co-ordinates')
legend({'standard deviation of estimated co-ordinates','standard deviation of Noisy co-ordinates'}, 'Location', 'northwest')
hold off