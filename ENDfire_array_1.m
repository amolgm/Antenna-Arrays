%%MATLAB PROGRAM FOR ENDFIRE ARRAY....

clear;
clc;
tic;

%%Initialisation
%AF    =    zeros(1,360);
%AE    =    zeros(1,360);
theta=1:360;

%%ACCEPTING INPUTS..

N=  input('\nEnter the number of Elements::->');
d=  input('\nEnter the distance between the elements::->');
k=  360;
c=  (k.*d)./2;

%%CALCULATING ARRAY FACTOR AND ARRAY ELEMENT...

 
      num=  ((1./N).*sind(N.*c.*(cosd(theta)+1)));
      den=  sind(c.*(cosd(theta)+1));
      AF=    num./den;
      AE=    (cosd(90.*cosd(theta-90)))./sind(theta-90);

AF=abs(AF);

%%PLOTTING...

theta=  linspace(0,2*pi,360);
subplot(221);
polar(theta,AE)

subplot(222);
polar(theta,AF)

subplot(2,2,[3,4]);
polar(theta,AE.*AF)
legend('Endfire array','Location','SouthEastOutside')

toc;