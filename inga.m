% MATLAB k�d: Inga m�dszer alkalmazhat�s�g�nak ellen�rz�se

% Pozit�v eg�sz sz�m bek�r�se
x = input('Adjon meg egy pozit�v eg�sz sz�mot (x): ');

% A m�trix �s b vektor bek�r�se
fprintf('Adja meg az A m�trixot (n x m):\n');
A = zeros(x);
for i = 1:x
    A(i, :) = input('');
end

fprintf('Adja meg a b vektort (n):\n');
b = zeros(x, 1);
for i = 1:x
    b(i) = input('');
end

% Diagon�lisan domin�ns-e az A m�trix
diagonalDominant = true;
for i = 1:x
    rowSum = 0;
    for j = 1:x
        if i ~= j
            rowSum = rowSum + abs(A(i, j));
        end
    end
    if abs(A(i, i)) <= rowSum
        diagonalDominant = false;
        break;
    end
end

% Eredm�ny ki�r�sa
if diagonalDominant
    disp('Az inga m�dszer alkalmazhat�.');
else
    disp('Az inga m�dszer nem alkalmazhat�.');
end
