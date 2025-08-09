% Definir parámetros del sistema
t = 0:0.01:2;    % vector de tiempo
w0 = 2*pi;       % frecuencia natural
T = 2*pi/w0;     % período
zeta = 0.1;      % factor de amortiguamiento
m = 1;           % masa
k = m*w0^2;      % constante de resorte
wd = w0*sqrt(1-zeta^2);  % frecuencia amortiguada

% Condiciones iniciales
U0 = 0;      % desplazamiento inicial
Udot0 = 0;   % velocidad inicial

% Parámetros simplificados para obtener las oscilaciones deseadas
A = 2;    
B = 1.5;  
C = 1;  
D = 0.5; 

% Solución complementaria (término transitorio)
Uc = exp(-zeta*w0*t).*(A*cos(wd*t) + B*sin(wd*t));

% Solución particular (término estable)
Up = C*sin(w0*t) + D*cos(w0*t);

% Solución general
U = Uc + Up;

% Crear una única figura con 4 subplots
figure('Color', 'white');  % Fondo blanco

% Ajustar el tamaño de la figura
set(gcf, 'Position', [100 50 800 1000]);

% Primera gráfica
subplot(4,1,1)
plot(t, U, 'b-', 'LineWidth', 2)
title('Solución General U(t)', 'FontSize', 12)
ylabel('Amplitud', 'FontSize', 10)
grid on
axis([0 2 -3 3])
set(gca, 'Position', [0.13 0.77 0.775 0.18], 'FontSize', 10)
box on

% Segunda gráfica
subplot(4,1,2)
plot(t, Uc, 'r-', 'LineWidth', 2)
title('Término Transitorio Uc(t)', 'FontSize', 12)
ylabel('Amplitud', 'FontSize', 10)
grid on
axis([0 2 -3 3])
set(gca, 'Position', [0.13 0.54 0.775 0.18], 'FontSize', 10)
box on

% Tercera gráfica
subplot(4,1,3)
plot(t, Up, 'g-', 'LineWidth', 2)
title('Término Estable Up(t)', 'FontSize', 12)
ylabel('Amplitud', 'FontSize', 10)
grid on
axis([0 2 -3 3])
set(gca, 'Position', [0.13 0.31 0.775 0.18], 'FontSize', 10)
box on

% Gráfica combinada en la parte inferior
subplot(4,1,4)
plot(t/T, Up, '--', 'LineWidth', 2, 'Color', [0.5 0.5 0.5])  % Respuesta estacionaria en gris
hold on
plot(t/T, U, '-', 'LineWidth', 2, 'Color', 'k')  % Respuesta total en negro
grid on
xlabel('t/T', 'FontSize', 10)
ylabel('u(t)/u_{st}', 'FontSize', 10)
title('Respuesta Total vs Respuesta Estacionaria', 'FontSize', 12)
legend('Respuesta estacionaria', 'Respuesta total', 'FontSize', 10, 'Location', 'best')
axis([0 2 -3 3])
set(gca, 'Position', [0.13 0.08 0.775 0.18], 'FontSize', 10)
box on

% Título general
sgtitle('Análisis Completo del Sistema Amortiguado', 'FontSize', 14)

% Ajustar la apariencia general de la cuadrícula
set(findall(gcf,'Type','axes'),'GridAlpha',0.2,'MinorGridAlpha',0.1)