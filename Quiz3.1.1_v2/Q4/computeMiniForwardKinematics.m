function [endeff] = computeMiniForwardKinematics(rads1,rads2)

endeff = [0,0];
alpha = (1/2) * (rads1 + rads2) + pi;
beta = (rads1 - rads2);

Y = sqrt(1+1-2*1*1*cos(beta));
Z = sqrt(1-(Y/2)^2);
X = sqrt(4-(Y/2)^2);

l = X-Z;

x_world = l*cos(alpha);
y_world = l*sin(alpha);

endeff = [x_world, y_world];