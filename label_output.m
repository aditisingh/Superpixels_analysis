max_val=max(max(lblImg));;
lblImg=lblImg/max_val;

[gx,gy] = gradient(lblImg);
lblImg((gx.^2+gy.^2)==0) = 0;

lblImg=lblimg*max_val;
imshow(label2rgb(lblImg))
