%%
%Q9
clear all;
clc;
dox = 48e-7;
L = 1.8e-6;
Width = 57e-6;
q = 1.602e-19;
Qox = (6.3e11)*q;
eox = (3.9)*(8.85e-14);
Cox = eox/dox;
fi_ms = -1.15;%n+poly p Si
es = (11.8)*(8.85e-14);
Na = 2.6e16;
k = 8.62e-5;
T = 300;
ni = 1.5e10;
fi_f = k*T*log(Na/ni);

Qs = -2*sqrt(es*q*Na*fi_f);
VT = fi_ms - (Qox/Cox) - (Qs/Cox) + 2*fi_f

%%
%Q2
clear all;
clc;
VT = 1;
IDSsat = 105;
VDSsat = 8;
VGS = 3.2;
VDS = 0.8;
%Calculate kn
kn = (IDSsat*2)/(VDSsat^2);
ID = kn*((VGS-VT)*VDS - 0.5*(VDS^2))
%%
%Q5
clear all;
clc;
VT = 3.1;
IDSsat = 161;
VDSsat = 1.8;
%Kolla på current saturation, där finns det formler som du kan jämföra för
%att komma fram till svaret nedan.
VGS = VDSsat + VT
%%
%Q13
clear all;
clc;
fi_m = 4.9;
q = 1.602e-19;
Na = 1.4e16;
dox = 13e-7;
T = 300;
Qox = 6.8e-8;
eox = (3.9)*(8.85e-14);
Cox = eox/dox;
k = 8.62e-5;
ni = 1.5e10;
fi_f = k*T*log(Na/ni);
es = (11.8)*(8.85e-14);
Eg = 1.12;
X = 4.01;
fi_s = X + (Eg/2) + fi_f;
Qs = -2*sqrt(es*q*Na*fi_f);
fi_ms = fi_m - fi_s;
VT = fi_ms - (Qox/Cox) - (Qs/Cox) + 2*fi_f
%%
%Q10
clc;
clear all;
%Calculate VT, kn, Na.
Z = 50e-4;
L = 2e-4;
un = 600;

