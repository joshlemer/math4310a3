function [root, eigenvector] = Perron_Frobenius(A)
    [m,n] = size(A)
    if m*n == 0 || m != n
        root = -2
        eigenvector = -2
        return
        endif

    #A is square, but is it nonpositive?
    if !(A == abs(A) && abs(A) > 0)
        root = -1
        eigenvector = -1
        return
        endif

    #A is positive
    #get the 1st-largest eigenpair, by eigenvalue modulus
    [eigenvector, root] = eigs(A,1)
    endfunction
