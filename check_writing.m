clear all ;close all ;clc;
theta_cx=1.0001;theta_cy=2.00011;
%f1='theta_cx'; f2='theta_cy';
% val1=theta_cx; val2=theta_cy;
% ss=struct(f1,val1,f2,val2)
% data.C1=[theta_cx,theta_cy,mag_theta_c,tau_wRe_c];
 %temp.(C0)=C1; 
%dlmwrite('output_matlab.txt',ss)
f1={'theta_cx','theta_cy'};
f2=[theta_cx,theta_cy];
T=table(f1,f2)
writetable(T,'xx.txt','WriteRowNames',true,'Delimiter','\t')
% writetable(struct2table(ss), 'somefile.txt','Delimiter','\t')
% dlmwrite('myFile.txt',ss,'delimiter','\t','precision',3)