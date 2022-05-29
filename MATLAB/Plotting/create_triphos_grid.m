function [] = create_triphos_grid(lower, upper, h)
%CREATE_TRIPHOS_GRID Plots the three Triphosian axes on the plane.
t = lower:h:upper;
r_axis = 0*t;
g_axis = -sqrt(3)*-t;
b_axis = sqrt(3)*-t;

hold on
plot(t,r_axis,'-r')
plot(-t,g_axis,'-g')
plot(-t,b_axis,'-b')
hold off
end