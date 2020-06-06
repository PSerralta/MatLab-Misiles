function F = ftn_fsolve (X)

Hor = X(1); % Hor
Vor = X(2); % Vor
MUearth = X(3); % MUearth
Rearth = X (4); % Rearth
Vrot = X(5); % Vel rotacion
OMEGAearth = X (6); % Omega earth
PHI = X (7); % Latitud
AZ = X (8); % Azimut pi/2 para ESTE -pi/2 OESTE
dV = X (9); % dV por perdidas 
Vi = X (10); % Vel inyeccion
lambda = X (11); 
Isp1 = X (12); % Isp etapa 1
Isp2 = X (13); % Isp etapa 2
Isp3 = X (14); % Isp etapa 3
sigma1 = X (15); % Relacion estructural etapa 1
sigma2 = X (16); % Relacion estructural etapa 2 
sigma3 = X (17); % Relacion estructural etapa 3
g0 = X (18); % gravedad

Hor = 375e3;
%Vor = ;
%Vrot = ;
MUearth = 3.986e14;
Rearth = 6378.14e3;
Hor = 375e3;
OMEGAearth = 7.2722e-5;
PHI = 0 * (pi/180);
AZ = pi/2;
dV = 1950;
%Vi = ;
g0=9.81;
%lambda = ;
Isp1 = 265;
Isp2 = 285;
Isp3 = 315;
sigma1 = 0.17;
sigma2 = 0.17;
sigma3 = 0.17;

f = Vor - sqrt(MUearth/(Rearth+Hor));
g = Vrot - (OMEGAearth * Rearth * cos(PHI) * sin(AZ));
h = Vi - (Vor+dV-Vrot);
i = (g0*Isp1/Vi) * log((1+lambda*g0*Isp1)/(lambda*sigma1*Isp1)) + (g0*Isp2/Vi) * log((1+lambda*g0*Isp2)/(lambda*sigma2*Isp2)) + (g0*Isp3/Vi) * log((1+lambda*g0*Isp3)/(lambda*sigma3*Isp3)) -1;
%i = (0.28337028) * log((1+lambda*2599.65)/(lambda*441.9405)) + (0.30475672) * log((1+lambda*2795.85)/(lambda*475.2945)) + (0.33683638) * log((1+lambda*3090.15)/(lambda*525.3255)) -1;

F = [f; g; h; i];

end

