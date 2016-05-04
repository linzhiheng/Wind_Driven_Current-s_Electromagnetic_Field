%Calculate the magnetic field of wind drived current
clear all
clc

in_Z = (0:0.1:pi);
n = length(in_Z);

out_X = zeros(1,n);
out_Y = zeros(1,n);

H_zero = 1;

X = @(z) H_zero*(exp(-1*z))*(cos(z)-sin(z));
Y = @(z) -1*H_zero*(exp(-1*z))*(cos(z)+sin(z));

for i = 1:n
    out_X(i) = X(in_Z(i));
    out_Y(i) = Y(in_Z(i));
end

plot(out_X,out_Y)