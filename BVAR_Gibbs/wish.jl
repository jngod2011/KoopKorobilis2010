"""
Command:  s=wish(h,n)
Purpose:  Draws an m x m matrix from a wishart distribution
          with scale matrix h and degrees of freedom nu = n.
          This procedure uses Bartlett's decomposition.
Inputs:   h     -- m x m scale matrix.
          n     -- scalar degrees of freedom.
Outputs:  s     -- m x m matrix draw from the wishart
                   distribution.
Note: Parameterized so that mean is n*h
"""
function wish(h, n)
    A = chol(Hermitian(h))'*randn(size(h,1),n) # Added Hermitian()
    return A*A'
end
