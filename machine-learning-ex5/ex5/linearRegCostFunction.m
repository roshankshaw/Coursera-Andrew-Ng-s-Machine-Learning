function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

P=X*theta-y;
J=(1/(2*m))*P'*P;
theta_2=theta(2:end,1);
reg_term=(lambda/(2*m))*theta_2'*theta_2;
J=J+reg_term;

grad=(1/m)*X'*P;
theta_3=theta;
theta_3(1)=0;

grad=grad+(lambda/m)*theta_3;










% =========================================================================

grad = grad(:);

end
