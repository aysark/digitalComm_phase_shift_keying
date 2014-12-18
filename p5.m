function [ rf ] = p5()
	r = rand(1,1000);
    rf = [];
     
    for i = 1:1000
        if(r(1,i) <= 0.25)
            rf = [rf 1];
        elseif(r(1,i) <= 0.5)
            rf = [rf 2];
        elseif(r(1,i) <= 0.75)
            rf = [rf 3];
        else
            rf = [rf 4];         
        end
    end     
    close all;       
    stem(rf(1,1:100));
end