function [] = saveAsJson(fname, data)
% Save the encoded json data (str) as a .json file
% Inputs: 1.) fname (str)   - .json file name
%         2.) data (str)    - Encoded .json data 

% Create a .json file
fid = fopen(fname + '.json', 'w');

% Write the data to the .json file
fprintf(fid, '%s', data);

% Close the .json file
fclose(fid);

end