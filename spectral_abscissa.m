function result = spectral_abscissa(A)
    [m,n] = size(A)
    if m*n == 0 || m != n
        #Not sure what to use as an error, because -2 is a valid output...
        result = 0
        return 
        endif

    result = max(real(eigs(A)))
    endfunction


