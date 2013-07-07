function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% Go over every example, find its closest centroid, and store
% the index inside idx at the appropriate location. idx(i) should 
% contain the index of the centroid closest to example i. Hence, 
% it should be a value in the range 1..K

for xi = 1:size(X, 1)
	x = X(xi, :);

	% Find closest centroid for x.
	best = Inf;
	
	for mui = 1:K
		mu = centroids(mui, :);
		d = dot(x - mu, x - mu);
		
		if d < best
			best = d;
			idx(xi) = mui;
		end
	end
end

% =============================================================

end
