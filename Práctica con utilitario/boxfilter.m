matlab function that returns a vector with the values of a box filter of size n. The filter is normalized so that the sum of the elements is 1. The filter is symmetric and has the same size in both dimensions. The filter is centered in the middle of the matrix. The filter is computed using the function boxfilter.m. The function is used in the function guidedfilter.m.

function h = boxfilter(n)

    h = ones(n) / (n * n);

end
