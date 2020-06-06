format compact

% script_fsolve_example

fhandle = @ftn_fsolve;
X0 = ones (18,1); % initial guess
X0(11) = - 0.007;
X = fsolve(fhandle, X0);

Hor = X(1) % Hor
Vor = X(2) % Vor
MUearth = X(3) % MUearth
Rearth = X (4) % Rearth
Vrot = X(5) % Vel rotacion
OMEGAearth = X (6) % Omega earth
PHI = X (7) % Latitud
AZ = X (8) % Azimut pi/2 para ESTE -pi/2 OESTE
dV = X (9) % dV por perdidas 
Vi = X (10) % Vel inyeccion
lambda = X (11) 
Isp1 = X (12) % Isp etapa 1
Isp2 = X (13) % Isp etapa 2
Isp3 = X (14) % Isp etapa 3
sigma1 = X (15); % Relacion estructural etapa 1
sigma2 = X (16); % Relacion estructural etapa 2 
sigma3 = X (17); % Relacion estructural etapa 3
g0 = X (18); % gravedad

%i = (0.28337028) * log((1+lambda*2599.65)/(lambda*441.9405)) + (0.30475672) * log((1+lambda*2795.85)/(lambda*475.2945)) + (0.33683638) * log((1+lambda*3090.15)/(lambda*525.3255)) -1

a = i