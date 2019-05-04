function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold all;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
m = length(y);
##for iter = 1 : m
##   
##    if(y(iter) == 1)
##        h1 = plot(X(iter, 1), X(iter, 2),'k+', 'LineWidth', 2, 'MarkerSize', 7);
##        hold on;
##    else
##        h2 = plot(X(iter,1), X(iter, 2),'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
##        hold on;
##    endif
## endfor
##% Specified in plot order
##legend([h1, h2],'Admitted', 'Not admitted');

% Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y == 0);
% Plot Examples
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, ...
'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
'MarkerSize', 7);






% =========================================================================



hold off;

end
