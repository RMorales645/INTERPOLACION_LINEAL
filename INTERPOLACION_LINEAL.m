%RONALD ALEXIS MORALES VARELA
%0901-23-6114
% Datos de ejemplo (puntos conocidos)
x = [7, 10, 13, 16, 19];
y = [14, 21, 28, 30, 28];

% Puntos donde queremos interpolar
xi = 13:0.5:16; % Genera puntos entre 1 y 5 con un paso de 0.1

% Interpolación lineal
yi_lineal = interp1(x, y, xi, 'linear');

% Interpolación cúbica (spline)
yi_cubica = interp1(x, y, xi, 'spline');

% Gráfica de los resultados
figure;
plot(x, y, 'o', 'DisplayName', 'Puntos originales'); % Puntos originales
hold on;
plot(xi, yi_lineal, 'DisplayName', 'Interpolación Lineal');
plot(xi, yi_cubica, 'DisplayName', 'Interpolación Cúbica (Spline)');
xlabel('x');
ylabel('y');
title('Interpolación Lineal y Cúbica');
legend('Location', 'best');
grid on;
hold off;