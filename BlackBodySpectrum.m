function [magnitude] = BlackBodySpectrum(f, temperature)
%blackbody Generates magnitude of blackbody radiation at a given frequency
%and temperature
%   f vectory of frequencies to calculate at
%   temperature vector of frequencies to calculate at
%   magnitude of spectrum at given frequency and temperature
%       magnitude is in units of power per spectral unit

c=3*10^8; % speed of light in vaccum
h=6.625*10.^-34; %  Planck constant 
k=1.38*10.^-23; %   Boltzmann constant

magnitude = ((2.*h.*f.^3)./(c^2)).*(1./(exp((h.*f)./(k.*temperature))-1));
end

