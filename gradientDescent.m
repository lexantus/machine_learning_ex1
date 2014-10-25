function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
	koef = alpha * (1 / m);
	sum0 = 0;
	sum1 = 0;
	
	for i = 1:m
		sum0 = sum0 + (hypotyse(theta, X(i, 2)) - y(i));
		sum1 = sum1 + ((hypotyse(theta, X(i, 2)) - y(i)) * X(i, 2));
	endfor


	sum0 = koef * sum0;
	sum1 = koef * sum1;

	theta(1) = theta(1) - sum0;
	theta(2) = theta(2) - sum1;

	% fprintf('%f t %f\n', theta(1, 1), theta(2,1));

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end

function H = hypotyse(theta, x_element)

H = 0;

H = theta(1) + theta(2) * x_element;

end