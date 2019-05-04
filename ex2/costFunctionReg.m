function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

first = (y).*(log(sigmoid(X * theta)));
second = (1.-y).*(log(1-sigmoid(X * theta)));
third = (lambda)/(2*m) *(theta.^2);

%Calculating cost function
J1 = -(1/m)*sum(first + second);

%Don't regularize  Theta0.
J2 = sum(third) - third(1);
J = J1 + J2;

% For calculating gradient descent we have different calculations for J = 0 and J >= 1
temp = (1/m)*(X' * (sigmoid(X*theta)-y));
grad = (1/m)*(X' * (sigmoid(X*theta)-y)) + (lambda/m)*theta;

%Now Replacing theta0 calulated previously.
grad(1) = temp(1);







% =============================================================

end
