%Soru 1(Cubic spline)
xData = [0; 1.525; 3.050; 4.575; 6.10; 7.625; 9.150];
yData = [1; 0.8617; 0.7385; 0.6292; 0.5328; 0.4481; 0.3741];
k = splineCurv(xData,yData);

disp('y�kseklik de�erini a�a��da giriniz.')
 h = input('h =  ');

if isempty(h)
disp('y�kseklik de�erini a�a��da giriniz.')
 h= input('h =  ');
else
    disp('Girmi� oldu�unuz y�kseklik de�eri i�in hava yo�unlu�u a�a��daki gibidir.')
    y = splineEval(xData,yData,k,h);
    disp('y =')
    disp(y)
      
end





