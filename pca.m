function [U, S] = pca(X)
[m, n] = size(X)
U = zeros(n);
S = zeros(n);

sigma = (1/m)*X'*X;

[U, S, V] = svd(sigma);

%=============DEBUG=========
%size_U = size(U)
%size_s = size(S)
%size_V = size(V)
% ==========================

end
