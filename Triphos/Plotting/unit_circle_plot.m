%{
Triphosian Unit Circle
Zane Billings
2019-12-06
%}
clear all; close all; clc;

%create_triphos_grid(0,3,0.01);

hexa_metric = @(r,g,b) (min([abs(r-b) + abs(g-b), abs(r-g) + abs(b-g), ...
    abs(g-r) + abs(b-r)]));

rs = -2:0.05:2;
gs = -2:0.05:2;
bs = -2:0.05:2;
solns = zeros(1000000,3);
count = 1;
solns_bar = waitbar(0, "Computing solutions...");

for p1 = 1:length(rs)
    waitbar(p1/length(rs), solns_bar, "Computing Solutions...");
    for p2 = 1:length(gs)
        for p3 = 1:length(bs)
            r = rs(p1);
            g = gs(p2);
            b = bs(p3);
            if hexa_metric(r,g,b) == 1
                solns(count, :) = [r g b];
                count = count + 1;
            end
        end
    end
end
close(solns_bar)

% Remove zero rows, since we know the origin is not a soln.
solns( ~any(solns,2), : ) = [];

euc = zeros(1000000,2);
transf = [1 0; (-1/2) (sqrt(3)/2); (-1/2) (-sqrt(3)/2)];
euc_bar = waitbar(0,"Moving to Euclidean Space...");
    
for n = 1:length(solns)
    coords = solns(n,:) * transf;
    euc(n,:) = coords;
    waitbar(n/length(solns),euc_bar,"Moving to Euclidean Space...")
end
close(euc_bar)
euc( ~any(euc,2), : ) = [];

x = euc(:,1);
y = euc(:,2);


figure()
create_triphos_grid(0,3,0.001)
hold on
plot(x,y,'.k')
hold off
axis([-1 1 -1 1])
daspect([1 1 1])
set(gca,'BoxStyle','full','Box','on')
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
%print("Triphos/triphos_unit_circle","-djpg")
%close()
