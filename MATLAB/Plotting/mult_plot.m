%{
Visualizing Triphosian Multiplication
Zane Billings
2019-12-08
%}

close all; clear all; clc;

t1 = [2, 2, 1];
t2 = [0, 2, 1];
t3 = treduce(tmult(t1,t2));

origin = [0 0];
euc1 = tconvert(t1);
euc2 = tconvert(t2);
euc3 = tconvert(t3);

[x1,y1] = create_vector(euc1);
[x2,y2] = create_vector(euc2);
[x3,y3] = create_vector(euc3);

figure()
create_triphos_grid(0,2,0.01);
hold on
% Uses arrow.m from file exchange to generate vectors.
% The rest of the plot will be edited in GIMP.
arrow(origin, euc1)
arrow(origin, euc2)
arrow(origin, euc3)
ang(origin, 0.6, [0 pi/3],'-p')
ang(origin, 0.5, [0 (5/6)*pi],'-m')
ang(origin, 0.4, [0, pi/3 + (5/6)*pi],'-c')
hold off