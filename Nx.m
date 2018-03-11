function z = Nx( x, k, x0, b )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
%n-s
fun=@(t)(cx(t).*ex(t-x,x0));
z = k.*integral(@(t)fun(t),-Inf,Inf,'ArrayValued',true)+b;

end
