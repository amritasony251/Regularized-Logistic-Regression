function [J, grad] = costFunctionReg(theta, X, y, lambda)
m = length(y); % number of training examples
theta1 = theta;
theta1(1,1)=0;
% You need to return the following variables correctly 
J = 0;
J1 = (-1/m)*[y'*log(sigmoid(X*theta))+(1-y)'*log(1-sigmoid(X*theta))];
J2 = (lambda/(2*m))*sum(theta1.*theta1);
J = J1 + J2;
grad = zeros(size(theta));

grad1 = (1/m)*[X'*(sigmoid(X*theta) - y)] + (lambda/m).*theta1;
grad = grad1;
end
