clear , clc
syms x
cf=('sin(x)+cos(x)-1')
f=inline(cf);
derivada=diff(cf,x);
df=inline(derivada);
i=1;
e(i) = 50;
x=0;

disp('    n             xi       error')
while (e(i)>0.001)

i=i+1;
x=x-f(x)/df(x);
e(i+1)= abs(f(x));
end

tamanio = size(e);
ite = 1:1:tamanio(2);

figure('DefaultAxesFontSize',14)
set(gcf,'color','white')
plot(ite,e,'color',[1  0  0],'linewidth',2)

grid on
hold on
plot(ite,e,'color',[0  0  1], 'LineWidth',2)
xlabel('iterations')
ylabel('error')
legend('error','x')