function dy = dNx( dx, x0, k, b )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
dy = k*exp(2*dx/x0).*cx(dx) + b;
end