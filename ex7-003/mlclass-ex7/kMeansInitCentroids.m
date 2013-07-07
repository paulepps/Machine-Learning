function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should return this values correctly
centroids = zeros(K, size(X, 2));

% Set centroids to randomly chosen examples from the dataset X

% Randomly reorder the indices of the examples
randidx = randperm(size(X, 1));

% Take the first K examples as centroids
centroids = x(randidx(1:K), :);

% =============================================================

end
