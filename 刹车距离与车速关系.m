clear;clc;
v=20:20:140;
d=[6.5,17.8,33.6,57.1,83.4,118,153.5];
p=polyfit(v,d,2);
c2=p(1);
c1=p(2);
x=0:1:140;
y=c1*x+c2*x.^2;
fprintf('c1:%.4f    c2:%.4f\n',c1,c2);
s='n 实际值 模型计算出的值\n';
fprintf(s);
for i=1:length(v)
    fprintf('%d %.2f %.4f\n',v(i),d(i),c1*v(i) + c2*v(i)^2);
end
plot(v,d,'r*',x,y,'b-');
legend('实际数据','拟合曲线');
xlabel('车速(km/h)');
ylabel('刹车距离(m)');
title('刹车距离与车速关系拟合');
grid on;