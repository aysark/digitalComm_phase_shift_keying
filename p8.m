function [ ynoise, noise ] = p8(No, output)
%     [output] = p7();
    L = length(output);
    noise = sqrt(No/2) + rand(1,L);
    ynoise = output + noise;
    
    close all;
    t  = (1:150);
    t = t ./ 30;
    
    subplot(2,1,1);
    plot(t,output(1,1:150));
    
    subplot(2,1,2);
    plot(t,ynoise(1,1:150));   
end

