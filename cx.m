function y = cx( x )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
load('tmp1.mat', 'column');
c(61-(1:60)) = mean(squeeze(column(23:36,:,1)),1)*0.3;
% c(1:42) = 0.;
% for i = 1: 42
%     for j = 1:9
%         c(i)=c(i)+column(i+j-1,61-(i+18-j-1),1);
%     end
% end
% c = c*0.3*sqrt(2)/9;
index = fix((x/cos(32.*pi/180)+25.+487.5)/25.)+10;
%index = fix((x+25./sqrt(2)+477.2972)/25./sqrt(2))+7;
if index <= 60 && index >=1 %42,60
    y = c(index);
else
    y = 0.;
end
end