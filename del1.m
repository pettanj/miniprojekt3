y = [0:5:20];
wy = [20.00 20.05 20.25 20.51 21.18];
fy=[];

fy = 62.5.*(20-y).*wy;
Q = trapz(y,fy);
disp(Q);
