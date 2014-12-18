function [output] = p7(rf)
%     [rf] = p5();
    [s1,s2,s3,s4] = p6();
    output = [];
    
    for i= 1:1000
        if(rf(1,i) == 1)
            output = [output s1];
            
        elseif(rf(1,i) == 2)
            output = [output s2]; 
            
        elseif(rf(1,i) == 3)
            output = [output s3];  
            
        elseif(rf(1,i) == 4)
            output = [output s4];
        end
    end
    
	close all;
	t  = (1:150);
	t = t ./ 30;
	plot(t,output(1,1:150));
end