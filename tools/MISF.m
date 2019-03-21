function F = MISF(I)
r = 3;    lambda = 0.01;
J = double(I)./255;
M_bar = J.*0;
[hei, wid,img] = size(I);
N = boxfilter(ones(hei, wid), r);
for j = 1:img
    M = smoothing(J(:,:,j), r, lambda,N);
    M = LAP(M);
    M = boxfilter(M,r) ./ N;
    M_bar(:,:,j) = 1 - boxfilter(1-M, r) ./ N;
end
W = double(M_bar(:,:,1) > M_bar(:,:,2));

W = boxfilter(W,r) ./ N;
minA = min(min(J(:,:,1))); maxA = max(max(J(:,:,1)));
for t = 1:3
    W = double(W > 0.5);
    W = bilateralFilter(W,J(:,:,1),minA,maxA,8,0.2);
end

F = J(:,:,1).*W + (1-W).*J(:,:,2);
F = uint8(255*F);