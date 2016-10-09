function mlag2(X, p)
    Traw = size(X, 1)
    N = size(X, 2)
    Xlag = zeros(Traw, N*p)
    for ii = 1:p
        Xlag[p+1:Traw, (N*(ii-1)+1):N*ii] = X[p+1-ii:Traw-ii, 1:N]
    end
    return Xlag
end
