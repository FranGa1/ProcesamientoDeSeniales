 N = 10;
 N0 = -2;
 delta = [zeros(1,N+N0) 1 zeros(1,N-N0)];
n = [-N:N];
stem(n, delta);
