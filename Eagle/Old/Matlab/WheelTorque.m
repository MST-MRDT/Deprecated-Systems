%Mars Rover Design Team
% Missouri S&T
%Motor Torque Curves
% Author: Lukas M�ller
rw=2:1:8; %Wheel radius in inches
GR=1; %Gear Ratio
Crr=0.3; %Approximate resistance coefficient
Cd=0.35; % Drag Coefficient
A=0.25; % Crosssectional Area of the Front of the rover in m^2
w=50; %Weight of rover in kg
lb=110.2;
g=9.81; %Gravitational Constant in m/s^2
phi= 0*0.0174532925; %Grade angle in Radians, first number can be put in degress
Nwheel= 6; %Number of Wheels on Rover

RR=lb*Crr;
GR=lb*sin(phi);
Tw=1.15*(RR+GR)*rw;
Tt=(Tw+((0.0012*Cd*A*6.7^2)*rw*0.0254))/Nwheel;
Nm=Tt*0.113;

plot(rw,Nm)