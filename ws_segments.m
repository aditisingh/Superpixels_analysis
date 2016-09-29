function [labels] = ws_segments(image_addr)
img=imread(image_addr);
level=graythresh(img);
img_bw=im2bw(img,level);
d=-bwdist(~img_bw);
l=watershed(d);
img_bw(l==0)=0;
label=bwlabel(bw);
end

