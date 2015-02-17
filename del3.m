D = [10:0.5:100];
Result = [];
Hvec = [];
for k = D
    fel = 1;
    h = 0.5;
    while fel >= 10e-5
        h= h/2;
        y = [0:h:k];
        y2 = [0:2*h:k];
        wy = w(y);
        wy2 = w(y2);
        FD = 62.5.*(k-y).*wy;
        FD2 = 62.5.*(k-y2).*wy2;
        Q = trapz(y, FD);
        Q2 = trapz(y2, FD2);
        fel = abs((Q - Q2)/3);
        
    end
    Hvec = [Hvec, h];
    Result = [Result, Q];
    
end

figure
subplot(2,1,1);
plot(D, Result);
title('Resultat')   
ylabel('Tryck (lb/ft^3)')
xlabel('Djup (ft)')

subplot(2,1,2);
plot(D, Hvec);
ylabel('Steglängd(h)')
xlabel('Djup(ft)')

