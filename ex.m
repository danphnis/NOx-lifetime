function y = ex( x , x0 )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    y = exp(- x./x0);
    y(x < 0) = 0.;
end


