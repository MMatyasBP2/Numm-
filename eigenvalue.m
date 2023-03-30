n = input('K�rem, adja meg a m�trix m�ret�t: ');

A = zeros(n,n);
for i = 1:n
    for j = i:n
        A(i,j) = input(sprintf('K�rem, adja meg az A(%d,%d) elemet: ',i,j));
    end
end

A2 = A*A;
eigvals = my_eig(A2);
fprintf('A^2 m�trix saj�t�rt�kei: ');
disp(eigvals);

function eigvals = my_eig(A)
n = size(A,1);
max_iterations = 100;
tolerance = 1e-6;
x = ones(n,1);
eigvals = zeros(n,1);

for i = 1:n
    while max_iterations > 0
        [Q, R] = qr(A - eigvals(i)*eye(n));
        x_new = Q'*x;
        x_new = x_new/norm(x_new);
        if norm(x_new - x) < tolerance
            break;
        end
        x = x_new;
        max_iterations = max_iterations - 1;
    end
    eigvals(i) = x'*A*x/(x'*x);
    x = ones(n,1);
end
end
