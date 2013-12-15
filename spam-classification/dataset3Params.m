function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% This function returns the optimal C and sigma learning parameters found 
% using the cross validation set. It uses svmPredict to predict the labels 
% on the cross validation set. 

values = [0.01 0.03 0.1 0.3 1 3 10 30];
error_min = inf;

for C = values
	for sigma = values
		fprintf('.');    
		model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));    

%       svmPredict(model, Xval) returns the predictions on the cross validation set.
%		mean(double(predictions ~= yval)) computes the prediction error.
%
		err   = mean(double(svmPredict(model, Xval) ~= yval));    
		if( err <= error_min )      
			C_final     = C;      
			sigma_final = sigma;      
			error_min   = err;      
		end  
	end
end

C     = C_final;
sigma = sigma_final;

% =========================================================================

end
