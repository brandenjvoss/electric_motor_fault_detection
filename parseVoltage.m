function V = parseVoltage(data)
%Function is passed a raw data file containing 6 columns where the first 3
%correspond to voltages vab, vbc and vca for the 3 - phase motor.
%Initialize variables for indexing current data from file.
fs = 3600;
interval = 1;

%Takes one second of data or 3600 data points since fs = 3600. The
%following calculates seconds 1 - 15 and returns a struct called V, 
%containing all 15 data sets labelled s01, s02 etc.
first = 1;
last = interval * fs;
V.s01 = data(first:last,1:3);

first = last + 1;
last = last + fs;
V.s02 = data(first:last,1:3);

first = last + 1;
last = last + fs;
V.s03 = data(first:last,1:3);

first = last + 1;
last =  last + fs;
V.s04 = data(first:last,1:3);

first = last + 1;
last = last + fs;
V.s05 = data(first:last,1:3);

first = last + 1;
last = last + fs;
V.s06 = data(first:last,1:3);

first = last + 1;
last =  last + fs;
V.s07 = data(first:last,1:3);

first = last + 1;
last = last + fs;
V.s08 = data(first:last,1:3);

first = last + 1;
last = last + fs;
V.s09 = data(first:last,1:3);

first = last + 1;
last =  last + fs;
V.s10 = data(first:last,1:3);

first = last + 1;
last = last + fs;
V.s11 = data(first:last,1:3);

first = last + 1;
last = last + fs;
V.s12 = data(first:last,1:3);

first = last + 1;
last =  last + fs;
V.s13 = data(first:last,1:3);

first = last + 1;
last = last + fs;
V.s14 = data(first:last,1:3);

first = last + 1;
last = last + fs;
V.s15 = data(first:last,1:3);

end