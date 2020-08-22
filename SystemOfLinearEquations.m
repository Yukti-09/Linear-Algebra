syms x y z
eqn1 = 2*x + y + z == 2;
eqn2 = -x + y - z == 3;
eqn3 = x + 2*y + 3*z == -10;
[A,B] = equationsToMatrix([eqn1, eqn2, eqn3], [x, y, z]);
X = linsolve(A,B)% X holds the output

%However, if we have 2 equations and 3 variables

syms x y z
eqn1 = 2*x + y + z == 2;
eqn2 = -x + y - z == 3;
[A,B] = equationsToMatrix([eqn1, eqn2], [x, y, z]);
X = linsolve(A,B)
%Warning: Solution is not unique because the system is rank-deficient. 
%z usually takes the value 0
