D = [10:0.5:100];
Q = [];
for k = D
    y = [0:0.5:k];
    wy = w(y);
    FD = 62.5.*(k-y).*wy;
    Q = [Q, trapz(y, FD)];
end

plot(D, Q);
title('Resultat')   
ylabel('Tryck (lb/ft³)')
xlabel('Djup (ft)')