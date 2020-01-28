% Soru2 Curve Fitting
xData = [1; 2.5; 3.5; 4; 1.1; 1.8; 2.2; 3.7]';
yData = [6.008; 15.722; 27.130; 33.772; 5.257; 9.549; 11.098; 28.828]';
format short e

k = input('Yak�nsama yap�lacak polinomun derecesi = ');
if isempty(k) % Loop is terminated
k = input('Yak�nsama yap�lacak polinomun derecesi = ');
elseif k==1
        disp('Do�rusal yakla��m se�ilmi�tir.');
        d=inline('9.4385e+000*xData-6.1899e+000','xData');
elseif k==2
        disp('2. dereceden polinom yakla��m� se�ilmi�tir.');
        d=inline('2.1081e+000*xData^2+(-1.0689e+000)*xData+4.4057e+000','xData');
elseif k>2
        disp('sadece 1 ve 2. dereceden polinom yak�nsamalar� i�in grafik kodlar� vard�r')
end

coeff = polynFit(xData,yData,k+1);
sigma = stdDev(coeff,xData,yData);

fplot(d, [0,4]);
hold on
plot(xData,yData,'ro')
legend('Polinom','Datalar',0)
xlabel('xData')
ylabel('yData')
hold off
disp('Katsay�lar a�a��daki gibidir: ')
disp(coeff)
disp('Standart sapma = ')
disp(sigma)

