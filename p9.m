function [ counter ] = p9( )
    range = 100000;
    [rf] = p5(); % generate and quantize
    [ output ] = p7(rf); % transform quantized to bases signals
    No = 4;
    [ ynoise, noise ] = p8(No, output); %add noise to them
        
    t = (0:1/30:1-1/30);
    T = 1;
    w0 = (2*pi)/T;
    x1 = sqrt(2) * cos(w0*t);
    y1 = sqrt(2) * sin(w0*t);
    angles = [];
    l = length(ynoise);
    
    for i = 1:30:l
        temp = ynoise(1,i:i+29);
        
        X = sum(x1 .* temp);
        Y = sum(y1 .* temp);
        temp = atan2(Y,X);
        
        if( temp < 0)
            temp = temp + 2*pi;  
        end
        angles = [angles temp];
    end  
    
    l = length(angles);
    backsignal = [];
    
    for i = 1:l
       o =  angles(1,i);
       
       if( (pi/4) < o  && o <= (3*pi/4)) 
           backsignal = [backsignal 1];
       elseif( (3*pi/4) < o  && o <= (5*pi/4)) 
           backsignal = [backsignal 2];
       elseif( (5*pi/4) < o  && o <= (7*pi/4)) 
           backsignal = [backsignal 3]; 
       elseif( ((7*pi/4) < o  && o <= (2*pi)) ||  (0 <= o && o <= (pi/4))) 
           backsignal = [backsignal 4]; 
       end  
    end  
    
    l = length(rf);
    counter = 0;
    for i=1:l
        if( rf(1,i) ~= backsignal(1,i) )
            counter = counter + 1;
        end
    end
       
    close all;
    subplot(2,1,1);
    plot(rf(1,1:5));
    title('Original');
    
    subplot(2,1,2);
    plot(backsignal(1,1:5));   
    title('After');    
end

