function y = ex( x , x0 )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    y = exp(- x./x0);
    y(x < 0) = 0.;
end


