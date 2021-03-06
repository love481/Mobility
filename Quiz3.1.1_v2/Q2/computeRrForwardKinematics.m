function [elbow,endeff] = computeRrForwardKinematics(rads1,rads2)
%%GIVEN THE ANGLES OF THE MOTORS, return an array of arrays for the
%%position of the elbow [x1,y1], and endeffector [x2,y2]
elbow = [0,0];
endeff =[0,0];
L1=1;L2=1;
elbow=elbow+[L1,0]*[cos(rads1) sin(rads1);-sin(rads1) cos(rads1)];
endeff=elbow+[L2,0]*[cos(rads1+rads2) sin(rads1+rads2);-sin(rads1+rads2) cos(rads1+rads2)];

