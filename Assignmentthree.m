%%
%Q1
clc;
clear all;
T = 300;
Eg = 2.9;
k = 8.62e-5;
Term1 = -Eg/(2*k*T);
Term2 = T^(3/2);
Nd = 1.6e16;
ni = (8.3e15)*Term2*exp(Term1);
Vbi = (Eg/2) + k*T*log(Nd/ni);%D? Na antas vara h?gt, du kan j?mf?ra det med W h?gst upp p? sidan 3.
E = 2e6;%Breakdown field (?)
e = (9.7)*(8.85e-14);%F/cm
q = 1.602e-19;
Vbr = (E*E*2*e)/(4*q*Nd)%

%%
%Q2
%Samma som ovan men nu har vi Na givet och kan ej antas vara h?g.
clc;
clear all;
ebreakdown = 2e6;
q = 1.602e-19;
e = (9.7)*(8.85e-14)
Na = 3.1e16;
Nd = 1.4e16;
Term1 = ebreakdown*ebreakdown;
Term2 = (e)/(2*q);
Term3 = (1/Na)+(1/Nd);
Vbr = Term1*Term2*Term3
%%
%Q3
clear all;
clc;
T = 440;
Eg = 2.9;
k = 8.62e-5;
Term1 = -Eg/(2*k*T);
Term2 = T^(3/2);
ni = (8.3e15)*Term2*exp(Term1);
Na = 5.1e15;
Nd = 1.9e16;

Vbi = k*T*log((Na*Nd)/(ni*ni))

%%
%new method, Q4
clear all;
clc;
%Q4
clear all;
clc;
T = 393;
Eg = 2.9;
k = 8.62e-5;
Term1 = -Eg/(2*k*T);
Term2 = T^(3/2);
ni = (8.3e15)*Term2*exp(Term1);
Nd = 2.4e17;
workfunction = 4.5;%eV
electronaffinity = 3.3;%eV
%fi_s = x_s + b;
Term3 = k*T*log(Nd/ni);%Term = Ef-Ei, eV
b = (Eg/2) - Term3;%eV
Fi_s = electronaffinity + b;
Vbi = workfunction - Fi_s%Fi_m - Fi_s
%%
%Q5
clear all;
clc;
Vbiased = 0.17;
Nd = 1e16;
Workf = 4.51;
A = 0.17;
T = 308;
q = 1.602e-19;
k = 8.62e-5;
Electronaffinity = 4.01;%V=eV/e
Barrier = Workf - Electronaffinity;%eV-V
term1 = (-Barrier)/(k*T);
R = 110;%Dubbelkolla detta.
Is = (A)*(T^2)*R*(exp(term1));
term2 = Vbiased/(k*T);
ForwardI = Is*(exp(term2) - 1)

%%
%Q6
Nd = 4e16;
q = 1.602e-19;
A = 0.020;
Vr = 23;
er = 16;%GaAs
e = er*(8.85e-14);
T = 300;
ni = 2.33e13;
Eg = 0.67;
k = 8.62e-5;
Vbi = (Eg/2) + k*T*log(Nd/ni);
Term = (q*Nd)/(2*e*(Vbi+Vr));%Vbi-V = Vbi-(-Vr)
C = e*A*sqrt(Term)

%%
%Q7
clc;
clear all;
A = 0.003;
ni = 1.5e10;
Eg = 1.12;
k = 8.62e-5;
T = 300;
q = 1.602e-19;
e = (11.8)*(8.85e-14);
Vbi = 0.954;
Term1 = Vbi - (Eg/2);
Term2 = Term1/(k*T);
Na = ni*exp(Term2);
Term3 = (2*Vbi)/(q*e*A*A);
Term4 = (2.11e19)/Term3;
Nd = (Term4 - (1/Na))^(-1)
