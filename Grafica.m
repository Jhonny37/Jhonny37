% Definir parámetros del sistema
t = 0:0.01:2;  % vector de tiempo
w0 = 2*pi;     % frecuencia natural
T = 2*pi/w0;   % período
zeta = 0.1;    % factor de amortiguamiento
m = 1;         % masa
k = 1;         % constante de resorte

% Solución complementaria (término transitorio)
Uc = exp(-zeta*w0*t)*(A*cos(wd*t) + B*sin(wd*t));

% Solución particular (término estable)
Up = C*sin(w0*t) + D*cos(w0*t);

% Solución general
U = Uc + Up;

% Calcular A y B
A = -D;     % donde D es un valor que necesitas definir
B = (U0 + zeta*w0*A - w0*C)/w0;  % donde C es un valor que necesitas definir

w = w0;  % frecuencia de excitación
F0 = 1;  % amplitud de la fuerza (ajustar según necesidad)
k = m*w0^2;

denominador = (1-(w/w0)^2)^2 + (2*zeta*w/w0)^2;

C = ((F0/k)*(1-(w/w0)^2) + F0/k*(2*zeta*w/w0)^2)/denominador;
D = (-F0/k*(2*zeta*w/w0))/denominador;

% Crear una única figura con 4 subplots
figure;

% Ajustar el tamaño de la figura
set(gcf, 'Position', [100 100 800 1000])

% Primera gráfica
subplot(4,1,1)
plot(t, U, 'b-', 'LineWidth', 1.5)
title('Solución General U(t)')
ylabel('Amplitud')
grid on
axis([0 2 -2 2])
set(gca, 'Position', [0.13 0.77 0.775 0.18])

% Segunda gráfica
subplot(4,1,2)
plot(t, Uc, 'r-', 'LineWidth', 1.5)
title('Término Transitorio Uc(t)')
ylabel('Amplitud')
grid on
axis([0 2 -2 2])
set(gca, 'Position', [0.13 0.54 0.775 0.18])

% Tercera gráfica
subplot(4,1,3)
plot(t, Up, 'g-', 'LineWidth', 1.5)
title('Término Estable Up(t)')
ylabel('Amplitud')
grid on
axis([0 2 -2 2])
set(gca, 'Position', [0.13 0.31 0.775 0.18])

% Gráfica combinada en la parte inferior
subplot(4,1,4)
plot(t, Up, '--', 'LineWidth', 2, 'Color', [0.5 0.5 0.5])  % Respuesta estacionaria en gris
hold on
plot(t, U, '-', 'LineWidth', 1.5, 'Color', 'k')  % Respuesta total en negro
grid on
xlabel('t/T')
ylabel('u(t)/u_{st}')
title('Respuesta Total vs Respuesta Estacionaria')
legend('Respuesta estacionaria', 'Respuesta total')
axis([0 2 -2 2])
set(gca, 'Position', [0.13 0.08 0.775 0.18])

% Título general
sgtitle('Análisis Completo del Sistema Amortiguado')