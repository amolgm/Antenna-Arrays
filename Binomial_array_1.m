%%MATLAB PROGRAM FOR Binomial ARRAY....

tic;

clear;
clc;

%%Intialisation
% AF    =    zeros(1,360);
% AE    =    zeros(1,360);

%%ACCEPTING INPUTS..

N=  7;%input('\nEnter the number of Elements::->');
d=  0.5;%input('\nEnter the distance between the elements::->');
k=  360;
beta=   0;
theta=1:360;

%%CALCULATING ARRAY FACTOR AND ARRAY ELEMENT...

      psi=  (k.*d.*cosd(theta))  + beta;
      AF=    (1+exp(1j.*(deg2rad(psi)))).^(N-1);
      AE=    (cosd(90.*cosd(theta)))./sind(theta);

AF=abs(AF);

%%PLOTTING...

theta=  linspace(0,2*pi,360);
subplot(221);
polar(theta,AE)

subplot(222);
polar(theta,AF)

subplot(2,2,[3,4]);
polar(theta,AE.*AF)
legend('Binomial array','Location','SouthEastOutside')

toc;