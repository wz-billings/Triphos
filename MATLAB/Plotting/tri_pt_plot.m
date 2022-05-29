%{
Triphosian Pythagorean Theorem
Zane Billings
2019-12-08
%}

close all; clear all; clc;

% Figure one: an arbitrary 60 deg triangle

ax = linspace(0,1);
ay = zeros(1,100);

bx = linspace(0,1);
by = sqrt(3) * bx;

cx = ones(1,100);
cy = linspace(0, max(by));

figure()
plot(ax,ay,'-k',bx,by,'-k',cx,cy,'-k','LineWidth',2.0)
axis([-0.25 1.1 -0.25 1.9])

% Figure two: applying a grid.
figure()
create_triphos_grid(0,1.1,0.01)
hold on
plot(ax,ay,'-k',bx,by,'-k',cx,cy,'-k','LineWidth',2.0)
hold off
axis([-0.25 1.1 -0.25 1.9])