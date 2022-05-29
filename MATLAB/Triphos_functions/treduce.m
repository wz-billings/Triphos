function [tstar] = treduce(t)
%TREDUCE Reduces a Triphosian number to standard form.
least = min(t);
tstar = t - least;
end

