function [pr,re]=compute_pr(ctrs,gt_ctrs)
max_dist=20;
D=sqrt(dist2(ctrs,gt_ctrs));
% find the squared distance between centers
[assign,cost]=munkres(D);
D1=(D<max_dist).*assign;
actual_assigned=sum(D1,1);
detected_assigned=sum(D1,2);
pr=sum(detected_assigned)/size(ctrs,1);
re=sum(actual_assigned)/size(gt_ctrs,1);
end