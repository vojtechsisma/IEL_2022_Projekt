U = 115;
I1 = 0.6;
I2 = 0.9;
R1 = 50;
R2 = 38;
R3 = 48;
R4 = 37;
R5 = 28;

G1 = 1/R1;
G2 = 1/R2;
G3 = 1/R3;
G4 = 1/R4;
G5 = 1/R5;

I = U/R1;

A = [G1+G2+G3 -G2 0; -G2 G2+G4 -G4; 0 -G4 G4+G5];

D = det(A);

A = [I -I2 I2-I1; -G2 G2+G4 -G4; 0 -G4 G4+G5];

DUA = det(A);

UA = DUA/D;

A = [G1+G2+G3 -G2 0; I -I2 I2-I1; 0 -G4 G4+G5];

DUB = det(A);

UB = DUB/D;

A = [G1+G2+G3 -G2 0; -G2 G2+G4 -G4; I -I2 I2-I1;];

DUC = det(A);

UC = DUC/D;

UR4 = UB - UC;

IR4 = UR4 / R4;