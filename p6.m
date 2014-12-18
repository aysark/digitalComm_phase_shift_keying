function [s1,s2,s3,s4] = p6()
    phase = (2*pi)/4;
    A = 2^0.5;
    fs = 30;
    T = 1;
    w0 = (6*pi)/T; 
    t = (0:1/fs:T-1/fs);
    
    s1 = A * cos(w0*t - (phase*1));
    s2 = A * cos(w0*t - (phase*2));
    s3 = A * cos(w0*t - (phase*3));
    s4 = A * cos(w0*t - (phase*4));
    
    close all;
    subplot(2,2,1);
    plot(t,s1);
    title('S1');
    subplot(2,2,2);
    plot(t,s2);
    title('S2');
    subplot(2,2,3);
    plot(t,s3);
    title('S3');
    subplot(2,2,4);
    plot(t,s4);
    title('S4');
end