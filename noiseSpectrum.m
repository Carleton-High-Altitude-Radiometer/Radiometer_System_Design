function [output] = noiseSpectrum(noiseTemperature ,fl, fh, Fa, Ns)
%noiseSpectrum Generates a blackbody noise spectrum at the given
%temperature between the given frequency points.
%   noiseTemperature temperature in kelvin of the blackbody
%   fl low frequency range
%   fh high frequency range
%   Fa simulation step frequency
%   Ns number of output samples to generate
%   timeseries two column output vector with timestap and magnitude

frequency = fl:(fh-fl)/(Ns-1):fh; % Size number of steps based upon the simulation rate
spectrum = BlackBodySpectrum(frequency, noiseTemperature); % Noise Spectrum of Antenna

noise = fftnoise(spectrum, 1);
time = ((0:(length(noise) - 1))/Fa)';
output = [time noise];
end

