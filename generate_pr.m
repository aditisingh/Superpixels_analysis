%actual segmentation result
clc;
clear all;
%find number of rows in each

gt_files=dir(fullfile('groundtruth','*.txt'));
nw_files=dir(fullfile('oversegment','*.txt'));

gt_files={gt_files.name}';
nw_files={nw_files.name}';

ctrs_gt=cell(numel(gt_files),1);
ctrs_nw=cell(numel(nw_files),1);

pr=cell(numel(gt_files),1);
re=cell(numel(gt_files),1);

all_pr=[]
for i=1:numel(gt_files)
    fname_gt=fullfile('groundtruth',gt_files{i});
    fname_nw=fullfile('oversegment',nw_files{i});
    N_rows_gt=numel(textread(fname_gt,'%1c%*[^\n]'));
    N_rows_nw=numel(textread(fname_nw,'%1c%*[^\n]'));

    fid_gt=fopen(fname_gt);
    fid_nw=fopen(fname_nw);

    %read lines from file
    ctrs_gt{i}=get_centers(fid_gt,N_rows_gt);
    ctrs_nw{i}=get_centers(fid_nw,N_rows_nw);
    [pr{i},re{i}]=compute_pr(ctrs_nw{i},ctrs_gt{i});
    all_pr=[all_pr;[pr{i} re{i}]];
end
save('pr_vals.mat','all_pr');