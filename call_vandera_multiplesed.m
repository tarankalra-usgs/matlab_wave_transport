% call standalone code 

% This is based on the prototype code intended for ROMS, as of
% March 21, 2018
clear all ; close all ; clc; 
% MODULE mod_scalars
% note that these are not common to functions, so make sure same values are
% used there
% END MODULE mod_scalars
% This coefficient modulates the progressive wave stress tauwRe
% Santoss includes this, and discusses values of 0.55 or zero.
% Using 1 matches equations in VA2013.
 
%
%      Input wave parameters
%      Hs=significant wave height
%      Td=dominant wave period
%      depth=water depth(m)
%
Hs=0.3; % ; 
Td = 10.0; % 6.5;%3.5;
depth = 6.0;% 3.5;%3.5;
d50 = 0.13e-3 ; % [0.13e-3, 0.55e-3] ;
bed_frac=[1.0]; % [0.5, 0.5] ; 

d90 = 1.3.*d50;
% umag_curr is the current velocity magnitude (MAKE Sure its the magnitude)
% direction of currents is counter-clockwise from wave direction
%
umag_curr=0.05; % abs(0.0);
deg2rad=pi/180.0; 
phi_curwave=0.0*deg2rad;

% Zref is a reference height for computing current friction factor 
Zref=0.04 ; 
% delta is the reference height at which current velocity is computed (Wave boundary layer thickness) 
delta=0.2;  
% RMS Wave velocity 
urms=0.3; % 0.65;

% need to find the way to compute this
d50mix=0.13e-3; 
time=1; 
%
% turn these terms off for comparing with coastal sed. 
waveavgd_stress_term=0;
surface_wave=0;

net_bedldx=0.0; net_bedldy=0.0 ; 
for i=1:1 % sediment loop
    
  [bedldx(i), bedldy(i)]=vandera_function_multiplesed(time, Hs, Td, depth,.......
                         d50(i), d50mix, d90(i), bed_frac(i), umag_curr,.......
                         phi_curwave, urms, Zref, delta,........
                         waveavgd_stress_term, surface_wave);
%            
  net_bedldx=net_bedldx+bedldx(i) ;  
  net_bedldy=net_bedldy+bedldy(i) ;  
end  
net_bedldx 
net_bedldy;
