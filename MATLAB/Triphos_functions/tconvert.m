function [euclidean] = tconvert(triphosian)
%CONVERT_TRIPHOS Converts a point in the Triphos coordinates to Euclidean.
%   Uses the matrix transform specified in Egging and Johnson (2015) to
%   convert a standard-form Triphosian coordinate into the Euclidean form.
%   ARGS:
%       triphosian: a standard form Triphosian number, represented as a 
%           row vector in R3.
%   RETURNS:
%       euclidean: a Euclidean ordered pair in R2.

transform = [1, 0; (-1/2), (sqrt(3)/2); (-1/2), (-sqrt(3)/2)];
euclidean = triphosian * transform;
end

