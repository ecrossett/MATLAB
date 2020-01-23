function centroids = computeCentroids(X, idx, K)

[m n] = size(X);
centroids = zeros(K, n);
clusters = zeros(m,K);

    for jj = 1:K
        count = 0;
        clusters(:,jj) = idx == jj;
        count = sum(clusters(:,jj));
        centroids(jj,:) = sum(X.* clusters(:,jj)) / count;
    end

end
