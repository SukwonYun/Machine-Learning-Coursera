function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% centroids_1 = {};
% centroids_2 = {};
% centroids_3 = {};
% 
% for i=1:m
%     if centroids(i) == 1
%         centroids_1 = [centroids_1, i];
%     else if centroids(i) == 2
%         centroids_2 = [centroids_2, i];
%     else if centroids(i) == 3
%         centroids_3 = [centroids_3, i];
%         end
%       end
%     end
% end

% cnt1 = 0;
% cnt2 = 0;
% cnt3 = 0;
% 
% for i=1:m
%     if idx(i) == 1
%         centroids(1,:) = centroids(1,:) + X(i,:);
%         cnt1 = cnt1 + 1 ;
%     else if idx(i) == 2
%         centroids(2,:) = centroids(2,:) + X(i,:);
%         cnt2 = cnt2 + 1 ;
%     else if idx(i) == 3
%         centroids(3,:) = centroids(3,:) + X(i,:);
%         cnt3 = cnt3 + 1 ;
%         end
%       end
%     end
% end
% 
% centroids(1,:) = centroids(1,:)./cnt1;
% centroids(2,:) = centroids(2,:)./cnt2;
% centroids(3,:) = centroids(3,:)./cnt3;

for i=1:K
    a = find(idx == i);
    centroids(i,:) = mean(X(a,:));
end
% =============================================================


end

