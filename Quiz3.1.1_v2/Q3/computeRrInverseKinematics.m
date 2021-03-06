function [theta1,theta2] = computeRrInverseKinematics(X,Y)

syms theta1 theta2 ;
L1=1;L2=1;
eq=[L1,0]*[cos(theta1) sin(theta1);-sin(theta1) cos(theta1)]...
+[L2,0]*[cos(theta1+theta2) sin(theta1+theta2);-sin(theta1+theta2) cos(theta1+theta2)];
eq=[eq(1)==X,eq(2)==Y];
S=solve(eq ,[theta1 theta2]);
theta1 = double(S.theta1(1,1));
theta2 = double(S.theta2(1,1));