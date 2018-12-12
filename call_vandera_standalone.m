% call standalone code 

% This is based on the prototype code intended for ROMS, as of
% March 21, 2018
clear all ; close all ; clc; 
% Santoss includes this, and discusses values of 0.55 or zero.
% Using 1 matches equations in VA2013.
%
%      Input wave parameters
%      Td=dominant wave period (s)
%      depth=water depth(m)
%      d50=median grain size (m)          
%      
%      Hs=significant wave height
%      umag_curr=current velocity (m/s)
%      phi_curwave=angle between waves and currents (deg.)
%      Zref=reference height for computing current friction factor
%      delta=reference height for calculating near bottom current velocity at the edge of wave boundary layer
%      urms=wave orbital velocity (m/s)
%      time=1 % fixed input
%      surface_wave=0 or 1  % Effect of progressive surface waves that modifies the time period in half cycles
%      waveavgd_stress_term= 0 or 1 % Effect of bottom boundary layer streaming to account for vertical gradient of stress

Td = 5.87; % 6.0 ;% ; %6.5;%3.5;
depth = 3.74 ; % 0.6; %3.5;%3.5;
d50 = 0.4e-3 ; %0.2e-3;
d90 = 1.3*d50;
Hs=1.5958; %0.3;%1.8; 
% umag_curr is the current velocity magnitude (MAKE Sure its the magnitude)
% direction of currents is counter-clockwise from wave direction
%
% This is constant
deg2rad=pi/180.0; 
umag_curr=.2814;% abs(0.0);
phi_curwave=79.92*deg2rad ;% 0.0*deg2rad;

% Zref is a reference height for computing current friction factor 
Zref=0.04 ;
% delta is the reference height at which current velocity is computed (Wave boundary layer thickness) 
delta=0.2;

% RMS Wave velocity 
urms=0.5517; % 0.3;
time=1;


% turn these terms off for comparing with coastal sed. 
waveavgd_stress_term=0; 
surface_wave=0; 

vandera_function(time,Hs, Td, depth, d50, d90, umag_curr, phi_curwave, urms, .....
                 Zref, delta, waveavgd_stress_term, surface_wave )

 
