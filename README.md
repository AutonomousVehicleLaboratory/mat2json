# mat2json
This repository is a mat2json conversion tool to convert the exported .mat file from the MATLAB's Ground Truth Labeler App to .json file.

##How to Run the Script
1. Export the annotated data as a .mat file from the Ground Truth Labeler App.
2. Save the file to the GTL_Data folder.
3. Open the "mat2json.m".
4. Replace the saved file name in Line 6 in the mat2json.m (i.e., gTruth_struct = load("./GTL_Data/gTruth_GTL.mat");)
5. Run the script.
6. The "label_data" and "label_def" will be saved to the saveData folder as .json files. 
