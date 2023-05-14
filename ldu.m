% Bek�rj�k a felhaszn�l�t�l az n �rt�ket
n = input('Adja meg az n �rt�k�t: ');

% Ellen�rizz�k, hogy az n pozit�v eg�sz-e
if ~isscalar(n) || n < 1 || rem(n, 1) ~= 0
    error('Az n �rt�knek pozit�v eg�sz sz�mnak kell lennie.')
end

% M�trix �s vektor bek�r�se
A = zeros(n, n);
b = zeros(n, 1);

fprintf('Adja meg az A m�trix �rt�keit:\n');
for i = 1:n
    for j = 1:n
        A(i, j) = input(sprintf('A(%d,%d) = ', i, j));
    end
end

fprintf('Adja meg a b vektor �rt�keit:\n');
for i = 1:n
    b(i) = input(sprintf('b(%d) = ', i));
end

% LU felbont�s
[L, U, P] = lu(A);

% Az L m�trix diagon�lis�nak kiv�laszt�sa
D = diag(diag(U));

% Az U m�trix friss�t�se a diagon�lis elt�vol�t�s�val
U = inv(D)*U;

% Az L m�trix friss�t�se a D-vel val� szorz�ssal
L = L*D;

% Az eredm�nyek megjelen�t�se
disp('Az L m�trix:');
disp(L);

disp('Az D m�trix:');
disp(D);

disp('Az U m�trix:');
disp(U);