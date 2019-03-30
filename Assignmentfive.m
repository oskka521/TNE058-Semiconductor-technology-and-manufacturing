%%
clc
clear
%Q3
Eg = 1.42;%eV
T = 300;
A = 0.04;
%Emitter
Nd = 2.6e16;
Dp = 6;
Dn = 16;
Ln = 17e-4;
Lp = 6e-4;
%Base
Na = 4.9e16;
Dp2 = 9;
Dn2 = 19;
Ln2 = 28e-4;
Lp2 = 8e-4;
%Collector
Nd1 = 6.9e14;
Dp3 = 24;
Dn3 = 33;
Ln3 = 27e-4;
Lnp3 = 12e-4;

VEB = 0.92;
VBC = -10;
Beta = 186;
YE = 1;

%Calculate Wbn
Wbn = sqrt((1-(186/187))*(2)*((28e-4)^2))
%WEB
Vbieb = 0.0259*log(((2.6e17)*(4.9e16))/(1.84e6)^2);
q = 1.602e-19;
Term1 = ((2)*(11.8)*(8.85e-14)*(Vbieb - 0.92))/(q);
Term2 = ((1/Nd)+(1/Na));
Wbe = sqrt(Term1*Term2)
%Wbc
Vbibc = 0.0259*log(((6.9e14)*(4.9e16))/(1.84e6)^2);
q = 1.602e-19;
Term1 = ((2)*(11.8)*(8.85e-14)*(Vbibc + 10))/(q);
Term2 = ((1/Nd1)+(1/Na));
Wbc = sqrt(Term1*Term2)

Wbc = Wbc*(Nd1/(Na+Nd1));
Wbe = Wbe*(Nd/(Na+Nd));

W = Wbn + Wbe + Wbc
%%
clear all
clc
T = 300;
%npn
%Problem 1
A = 0.001;
Eg = 1.12;
%Emitter
Nde = 5e17;
Dpe = 5;
Dne = 20;
Tne = 1e-7;
Tpe = 1e-6;
%Base
Na = 1e16;
Dpb = 10;
Dnb = 30;
Tnb = 1e-7;
Tpb = 1e-6;
Wb = 4e-4;
%Collector
Ndc = 1e15;
Dpc = 12;
Dnc = 35;
Tnc = 1e-6;
Tpc = 1e-6;

VEB = 0.5;
VBC = 5;

%Base transport factor
q = 1.602e-19;
Lnb = sqrt(Dnb*Tnb);
VbiBC = 0.0256*log((Na*Ndc)/(1.5e10)^2);
Term1 = ((2)*(11.8)*(8.85e-14))/q;
Term2 = VbiBC - (-1*VBC);
Term3 = (Na + Ndc)/(Na*Ndc);
WBC = sqrt(Term1*Term2*Term3);
WBC = WBC*((Ndc)/(Ndc+Na));

VbiEB = 0.0256*log((Na*Nde)/(1.5e10)^2);
Term1 = ((2)*(11.8)*(8.85e-14))/q;
Term2 = VbiBC - VEB;
Term3 = (Na + Nde)/(Na*Nde);
WBE = sqrt(Term1*Term2*Term3);
WBE = WBE*((Nde)/(Nde+Na));

Wbn = Wb - WBC - WBE;
B = 1 - ((Wbn^2)/(2*Lnb^2))

%Emitter injection efficiency

Unp = Dpe/0.0259;%minoritetsbärare på emitter
Upn = Dnb/0.0259;%minoritetsbärare på bas
Np = Na;
Pn = Nde;
Lpe = sqrt(Dpe*Tpe);
YE = (1 + ((Wbn*Np*Unp)/(Lpe*Pn*Upn)))^(-1)

%Current gain
alpha = B*YE

%Poängen betacur
Beta = (alpha)/(1-alpha)
%Problem 2
ni = 1.5e10;
I1 = q*A*ni*ni;
I2 = (1/5e17)*(Dpe/Lpe);
I3 = (1/1e16)*(Dnb/Wbn);
I4 = - 1 + exp(VEB/0.0259);
IE = I1*(I2+I3)*I4

IB = IE/(1+Beta)
IC = IB*Beta
%%
%Problem 3
clear all
clc



