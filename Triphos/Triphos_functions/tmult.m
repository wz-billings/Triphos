function [t3] = tmult(t1,t2)
%TMULT Triphosian multiplication of t1,t2.

r1 = t1(1); g1 = t1(2); b1 = t1(3);
r2 = t2(1); g2 = t2(2); b2 = t2(3);

r3 = r1*r2 + g1*b2 + b1*g2;
g3 = r1*g2 + g1*r2 + b1*b2;
b3 = r1*b2 + g1*g2 + b1*r2;

t3 = [r3, g3, b3];
end

