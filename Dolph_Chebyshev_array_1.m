%%MATLAB PROGRAM FOR Dolph_Chebyshev ARRAY....

clear;
clc;
tic;
%%ACCEPTING INPUTS..

N=  input('\nEnter the number of Elements::->');
d=  input('\nEnter the distance between the elements::->');
c=  180.*d;
An= 1;
z= mod(N,2);
theta=1:360;
m=1:N;

%%CALCULATING ARRAY FACTOR AND ARRAY ELEMENT...

if(z==0)                                %'N' is Even... 
        %sum =   0;
        u   =   c.*cosd(theta);
        AF =   cumsum((An.*cosd((2.*m-1).*u)));    
        AE  =   (cosd(90.*cosd(theta)))./sind(theta);
else                                    %'N' is Odd...
    %sum  =   0;
    u    =   c.*cosd(theta);
    sum  =   sum+(An.*cosd(2.*(m-1).*u));    
    AF   =   sum;
    AE   =   (cosd(90.*cosd(theta)))./sind(theta);
end

AF=abs(AF);

%%PLOTTING...

theta=  linspace(0,2*pi,360);
subplot(221);
polar(theta,AE)

subplot(222);
polar(theta,AF)

subplot(2,2,[3,4]);
polar(theta,AE.*AF)
legend('Dolph-Chebyshev array','Location','SouthEastOutside')

toc;