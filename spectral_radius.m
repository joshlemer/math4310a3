function result = spectral_radius(A)
    [m,n] = size(A)
    if m * n == 0 || m != n
        result = -2
        return
        endif

    result = max(abs(eigs(A)))
    endfunction
