% Extended Euclid function to get value of D for decryption
function [cs123_x,cs123_y,cs123_d]=cs123_extended_euclid(cs123_a,cs123_b)
    if cs123_b==0
        cs123_x=1;
        cs123_y=0;
        cs123_d=cs123_a;
        return;
    end
    [cs123_x1,cs123_y1,cs123_d1]=cs123_extended_euclid(cs123_b,mod(cs123_a,cs123_b));  

    cs123_x=cs123_y1;
    cs123_y=cs123_x1-floor(cs123_a/cs123_b)*cs123_y1;
    cs123_d=cs123_d1;

end 