function [dist] = tdist(t1, t2)
%TNORM Calculates the Hexa-Metric distance between Triphosian reals t1, t2.

% Remove components
r1 = t1(1); g1 = t1(2); b1 = t1(3);
r2 = t2(1); g2 = t2(2); b2 = t2(3);

p1 = abs((r1 - b1) - (r2 - b2)) + abs((g1 - b1) - (g2 - b2));
p2 = abs((r1 - g1) - (r2 - g2)) + abs((b1 - g1) - (b2 - g2));
p3 = abs((g1 - r1) - (g2 - r2)) + abs((b1 - r1) - (b2 - r2));

dist = min([p1 p2 p3]);

end

