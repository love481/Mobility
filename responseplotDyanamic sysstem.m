A=[-1 2;0 -2]; B=[-2/3 2/3;1/3 -1/3];
%P=[-0.5+1i,-0.5-1i];
%K=place(A,B,P);
t=0;
x=[2;4];
X=[1;1];
dt=0.01;
R=[];R1=[];
T=[];
while(t<10),
    R=[R,x]; T=[T,t];
    R1=[R1,X];
    x=x+dt.*((A-B)*x +(B*[1;1]));
    X=X+dt.*(A*X);
    t=t+dt;
end
hold on;
plot(T,R(2,:),T,R1(2,:));