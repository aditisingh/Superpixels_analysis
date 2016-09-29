function ctrs=get_centers(fid)
    all_text=textscan(fid,'%s','Delimiter','');
    curr_line=all_text{:}(i);
    str=curr_line{1}
    field_vals=strsplit(str);
    ctr_x=field_vals(2); ctr_y=field_vals(3);
end

