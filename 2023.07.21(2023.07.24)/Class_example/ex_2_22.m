clear all;
close all;
clc;

theta_T = 3;
a=2;

n=1;
for t=0:0.01:10
    y2=a*(t>=theta_T);
    if(t<theta_T)
        y(n)=0;
    else
        y(n)=2;
    end

    t_array(n)=t;

    n=n+1;
end

figure; plot(t,y2); grid on;
plot(t_array,y); grid on;