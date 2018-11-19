Fa = 10E9; % 10 GHz, the "clock rate" for the analog portions of the simulation. Should be much higher then the switch rate or the sample speed

Fs = 10E3; % 10 kHz, set switch clock rate

Simulation_Runtime = 5/Fs; % 5 switch cycles, How long the simulation should run

Antenna_Temperature = 600; % 600 K, antenna temperature in kelvin
Reference_Temperature = 300; % 600 K, reference temperature in kelvin

Antenna_Noise   = noiseSpectrum(Antenna_Temperature,   1E6, 1E10, Fa, Fa*Simulation_Runtime);
Reference_Noise = noiseSpectrum(Reference_Temperature, 1E6, 1E10, Fa, Fa*Simulation_Runtime);