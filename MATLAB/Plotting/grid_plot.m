%{
Plot Triphos Grid
Zane Billings
2019-12-8
%}

close all; clear all; clc;

figure('units','normalized','outerposition',[0 0 1 1])
create_triphos_grid(0,1,0.001)
axis([-1 1 -1 1])
daspect([1 1 1])
set(gca,'BoxStyle','full','Box','on')
%set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
%print("Triphos/grid.jpg",'-djpeg')
ax = gca;
outerpos = ax.OuterPosition;
ti = ax.TightInset; 
left = outerpos(1) + ti(1);
bottom = outerpos(2) + ti(2);
ax_width = outerpos(3) - ti(1) - ti(3);
ax_height = outerpos(4) - ti(2) - ti(4);
ax.Position = [left bottom ax_width ax_height];