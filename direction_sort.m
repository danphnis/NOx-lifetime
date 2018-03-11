function [ sort ] = direction_sort( u, v )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
mu = squeeze(mean(mean(u)));
mv = squeeze(mean(mean(v)));
mw = sqrt(mu.^2 + mv.^2);
index = size(mw);
sort(1: index(1)) = -1;
for i = 1 : index(1)
    %calm
    if mw(i) < 2.
        sort(i) = 0;
        continue;
    end
    %north
    if (mv(i) > 0.) && (abs(mu(i)/mw(i)) < 0.5)
        sort(i) = 1;
        continue;
    end
    %east
    if (mu(i) > 0.) && (abs(mv(i)/mw(i)) < 0.5)
        sort(i) = 3;
        continue;
    end
    %south
    if (mv(i) < 0.) && (abs(mu(i)/mw(i)) < 0.5)
        sort(i) = 5;
        continue;
    end
    %west
    if (mu(i) < 0.) && (abs(mv(i)/mw(i)) < 0.5)
        sort(i) = 7;
        continue;
    end
    %ne
    if (mu(i) > 0.) && (mv(i) > 0.)
        sort(i) = 2;
        continue;
    end
    %se
    if (mu(i)< 0.) && (mv(i) > 0.)
        sort(i) = 4;
        continue;
    end
    %sw
    if (mu(i) < 0.) && (mv(i) < 0.)
        sort(i) = 6;
        continue;
    end
    %nw
    if (mu(i) > 0.) && (mv(i) < 0.)
        sort(i) = 8;
        continue;
    end
    sort(i)= 9;
end
for i = 1 : index(1)/4
    s = sort(4*i-3);
    for j = 4*i-2 : 4*i
        if sort(j) ~= s
            for k = 4*i-3 : 4*i
                sort(k) = 9;
            end
            break;
        end
    end
end
end