function z = Nx( x, k, x0, b )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%n-s
fun=@(t)(cx(t).*ex(t-x,x0));
z = k.*integral(@(t)fun(t),-Inf,Inf,'ArrayValued',true)+b;

end
