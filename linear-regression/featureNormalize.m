function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% First, for each feature dimension, compute the mean
% of the feature and subtract it from the dataset,
% storing the mean value in mu. 
mu = mean(X);
X_norm = [X(:,1) - mu(1), X(:,2) - mu(2)]

% Next, compute the standard deviation of each feature 
% and divide each feature by it's standard deviation, 
% storing the standard deviation in sigma. 
sigma = std(X);
X_norm = [X_norm(:,1) / sigma(1), X_norm(:,2) / sigma(2)]

% ============================================================

end
