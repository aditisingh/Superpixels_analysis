%actual segmentation result
fid_def=fopen('cropped_table_def.txt');
fid_3_5=fopen('cropped_table_3_5.txt');
fid_2_4=fopen('cropped_table_2_4.txt');

%read lines from file
ctrs_def=get_centers(fid_def);