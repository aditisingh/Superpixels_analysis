
function plot_pr_curve
load 'oversegment/pr_vals.mat';

pr1=all_pr(1:end,:);
pr2=all_pr(2:end,:);
plot(pr2(:,2),pr2(:,1),'+','MarkerSize',12, 'LineWidth',2);
set(gca,'FontSize',14,'FontWeight','bold');
h = xlabel('Recall');
set(h,'FontSize',14,'FontWeight','bold');
h = ylabel('Precision');
set(h,'FontSize',14,'FontWeight','bold');
h= title('Precesion-recall for superpixel generation');
set(h,'FontSize',14,'FontWeight','bold');