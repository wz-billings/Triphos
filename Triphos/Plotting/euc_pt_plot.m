%{
Euclidean Pythagorean Theorem
Zane Billings
2019-12-08
%}

close all; clear all; clc;

% Figure one: an arbitrary right triangle

ax = zeros(1,100);
ay = linspace(0,2);

bx = linspace(0,1);
by = zeros(1,100);

cx = linspace(0,1);
cy = -2 .* cx + 2;

haxisx = linspace(-1,2);
haxisy = zeros(1,100);

vaxisx = zeros(1,100);
vaxisy = linspace(-1,3);

figure()
plot(ax,ay,'-b',bx,by,'-b',cx,cy,'-b','LineWidth',2.0)
axis([-0.25 1.25 -0.25 2.25])

figure()
hold on
plot(ax,ay,'-b',bx,by,'-b',cx,cy,'-b','LineWidth',2.0)
plot(haxisx,haxisy,'-k',vaxisx,vaxisy,'-k')
hold off
axis([-0.25 1.25 -0.25 2.25])