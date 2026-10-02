% Dominykas Kerulis, EF-25/2, 2026-10-02
close all
clear all
clc

%==================
figure(1);
theta = linspace(0, 2*pi, 200);
r = linspace(0, 1, 100);
[Theta, R] = meshgrid(theta, r);

X = R .* cos(Theta);
Y = R .* sin(Theta);
Z = 1 - 2 .* X.^2 - 3 .* Y.^2;

surf(X, Y, Z, 'FaceColor', [0.2 0.6 0.9], 'EdgeColor', 'none');
shading interp
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y) = 1 - 2x^2 - 3y^2')
view(45, 45)
grid on

%=================
figure(2);
x = linspace(-2, 2, 200);
y = linspace(-2, 2, 200);
[X, Y] = meshgrid(x, y);

Z = sin(abs(X + Y) / 20) .* exp(-abs(X + Y));;

surf(X, Y, Z, 'FaceColor', [0.9 0.4 0.2], 'EdgeColor', 'none');
shading interp
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y) = sin(|x+y|/20)e^{-|x+y|}')
view(60, 60)
grid on

%=================
