function [ s1,s2,s3,s4,s5,s6,s7,s8 ] = p1()
    T = 1;
    A = 2^0.5;
    phase = (2*pi)/8;
    fs = 30;
    w0 = (6*pi)/T; 
    t = (0:1/fs:T);
    
    s1 = A * cos(w0*t - (phase*1));
    s2 = A * cos(w0*t - (phase*2));
    s3 = A * cos(w0*t - (phase*3));
    s4 = A * cos(w0*t - (phase*4));
    s5 = A * cos(w0*t - (phase*5));
    s6 = A * cos(w0*t - (phase*6));
    s7 = A * cos(w0*t - (phase*7));
    s8 = A * cos(w0*t - (phase*8));
    close all;
    
    subplot(2,2,1);
    plot(t,s1);
    title('S1 = sqrt(2) * cos(w0*t - (1*2*pi/8))');
    
    subplot(2,2,2);
    plot(t,s2);
    title('S2 = sqrt(2) * cos(w0*t - (2*2*pi/8))');
    
    subplot(2,2,3);
    plot(t,s3);
    title('S3 = sqrt(2) * cos(w0*t - (3*2*pi/8))');
    
    subplot(2,2,4);
    plot(t,s4);
    title('S4 = sqrt(2) * cos(w0*t - (4*2*pi/8))');
    
    figure
    subplot(2,2,1);
    plot(t,s5);
    title('S5 = sqrt(2) * cos(w0*t - (5*2*pi/8))');
    subplot(2,2,2);
    plot(t,s6);
    title('S6 = sqrt(2) * cos(w0*t - (6*2*pi/8))');
    subplot(2,2,3);
    plot(t,s7);
    title('S7 = sqrt(2) * cos(w0*t - (7*2*pi/8))');
    subplot(2,2,4);
    plot(t,s8);
    title('S8 = sqrt(2) * cos(w0*t - (8*2*pi/8))');
end