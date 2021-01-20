function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


X = [ones(m, 1) X];

size(X)
size(Theta1)


a2 = sigmoid(X*Theta1');
a2 = [ones(m, 1) a2];
size(a2)
size(Theta2)
a3 = sigmoid(a2*Theta2');


size(a3)
row = size(a3);
col = size(a3)(2);

for i=1:row
  val = 0;
  index = 0;
  for j = 1:col
     if(val < a3(i,j)),
       val = a3(i,j);
       index = j;
     end
  endfor
  p(i) = index;
endfor


% =========================================================================


end
