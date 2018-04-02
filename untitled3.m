% Name = {'M4';'M5';'M6';'M8';'M10'};
% Pitch = [0.7;0.8;1;1.25;1.5];
% Shape = {'Pan';'Round';'Button';'Pan';'Round'};
% Price = [10.0;13.59;10.50;12.00;16.69];
% Stock = [376;502;465;1091;562];
% T = table(Pitch,Shape,Price,Stock,'RowNames',Name)
% 
% writetable(T,'tabledata2.txt','Delimiter','\t','WriteRowNames',true)
% 
% Name = {'M4';'M5';'M6';'M8';'M10'};
% Pitch = [10.7;0.8;1;1.25;1.5];
% Shape = {'Pan';'Round';'Button';'Pan';'Round'};
% Price = [10.0;13.59;10.50;12.00;16.69];
% Stock = [376;502;465;1091;562];
% T = table(Pitch,Shape,Price,Stock,'RowNames',Name)
% 
% writetable(T,'tabledata2.txt','Delimiter','\t','WriteRowNames',true)
clear all ; close all ; clc; 
var_age=20;
point_value=0.002;

fid=fopen('taran.txt','a+');
fprintf(fid,'%d, %.5f\n',var_age,point_value);
fclose(fid)
