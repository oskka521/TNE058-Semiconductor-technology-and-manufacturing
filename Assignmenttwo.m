%%
%Q1 tillhör Q6
clear all;
A = 0.00023;
T = 300;
kb = 8.62e-5;
q = 1.602e-19;
ni = 1.5e10;
%n
tp = 9.3e-6;
un = 118;
up = 462;
%p
Na = 3.1e15;
tn = 0.2e-6;
un = 702;
up = 219;
e = (11.8)*(8.85e-14);
Eg = 1.12;
vbi = (Eg/2) + kb*T*log(Na/ni);
T1 = (q)/(2*e*vbi);
T2 = Na;
C = e*A*((T1*T2)^(1/2))
%%
%Q2
clear all;
Eg = 0.67;%GaAs
Nd = 7.7e15;
Na = 4.5e17;
T = 300;
q = 1.602e-19;
kb = 1.38e-23;
ni = 2.33e13;

Vbi = (kb*T/q)*log((Na*Nd)/(ni*ni))
%%
%Q3 tillhör Q5??
clear all;
A = 0.00025;
T = 300;
ni = 1.5e10;
Na = 3.3e16;
q = 1.602e-19;
kb = 8.62e-5;
e = (11.8)*(8.85e-14);
Eg = 1.12;
Vbi = (Eg/2) + kb*T*log(Na/ni);
W = sqrt((2*e*Vbi)/(q*Na));
E = (2*Vbi)/(W)
%%
%Q4 tillhör Q4
clear all;
Na = 5.1e15;
Nd = Na;
Eg = 1.12;
breakdown_field = 3e5;
T = 300;
q = 1.602e-19;
e = (11.8)*(8.85e-14);

Term1 = (breakdown_field*breakdown_field*e)/(2*q);
Term2 = (1/Nd) + (1/Na);
breakdown_voltage = Term1*Term2

%%
%Q5 tillhör Q7
clear all;
clc
%given
Eg = 1.12;
T = 328;
V = 0.7;
forwardI = 24e-3;
k = 8.62e-5;
q = 1.602e-19;
%target
Ttarget = 218;
Term = (q*V)/(k*T);

B = forwardI/(((T^3)*exp(V-Eg)/(k*T)) - exp((-Eg)/(k*T)))
I = B*((Ttarget^3)*(exp(V-Eg)/(k*T)) - exp((-Eg)/(k*T))) 

Isvar = I/2.5895






%%
%Q6 tillhör Q2
clear all;
clc
eg = 0.67;
kb = 8.62e-5;
ni = 2.33e13;
T = 300;
A = 0.032;
q = 1.602e-19;
%n
Nd = 5.5e15;
tp = 12e-6;
up = 491;
%p
Na = 1.7e17;
tn = 2e-6;
un = 1221;
%Calculation
Dp = (up*kb*T);
Lp = sqrt(Dp*tp);
Dn = (un*kb*T);
Ln = sqrt(Dn*tn);
Pn = (ni*ni)/Nd;
Np = (ni*ni)/Na;
I0 = q*A*((Pn)*(Dp/Lp) + (Np)*(Dn/Ln))
%%
%Q7 tillhör Q1
clear all;
A = 0.021;
eg = 0.67;
T = 300;
q = 1.602e-19;
kb = 8.62e-5;
ni = 2.33e13;
V = 0.27;
%n, minoritetsbärare är viktiga
Nd = 7e16;
tp = 82e-6;
%un = 6360;
up = 411;
%p, minoritetsbärare är viktiga
Na = 2.4e15;
tn = 35e-6;
un = 3096;
%up = 181;
%L = sqrt(D*t);
%D = (u*k*t)/(q);
Dp = (up*kb*T);
Lp = sqrt(Dp*tp);
Dn = (un*kb*T);
Ln = sqrt(Dn*tn);
Pn = (ni*ni)/Nd;
Np = (ni*ni)/Na;
I0 = q*A*((Pn)*(Dp/Lp) + (Np)*(Dn/Ln));
exponent = (V)/(kb*T);
I = I0*(-1 + exp(exponent))
%%
%Q8 tillhör Q3
clear all;
clc
Eg = 1.42;
Nd = 3.5e14;
T = 300;
kb = 8.62e-5;
ni = 1.84e6;
Vbi = (Eg/2) + kb*T*log(Nd/ni)%+ tecken över pn innebär att någon av n eller p är kraftigt dopade.
%alltså Na är very high.
