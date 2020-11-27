function GradientDescentMethodConstantStep
% Метод градиентного спуска с постоянным шагом.
% Установка формата вывода.
format long
% Очистка экрана.
clc
% Очистка переменных.
clear

% Заданная точность вычислений.
e = 0.001;
% Начальное приближение.
x0_current = [0; 0];
x0_next = x0_current;
% a задает скорость градиентного спуска.
a = 0.25;
% Максимальное число итераций (страховка).
max_iter_number = 15;    % Значения от 0 и менее не ставить!

syms x1 x2;
% Исходное уравнение.
f = x1 ^ 2 + 2 * x2 ^ 2 + exp(x1 + x2);

% Первая итерация.
x0_next = x0_current - a * double(subs(subs(gradient(f), x1, x0_current(1)), x2, x0_current(2)));
% Текущее количество итераций.
iter = 1;

while ((iter < max_iter_number) && (((abs(x0_next(1) - x0_current(1)) >= e) || (abs(x0_next(2) - x0_current(2)) >= e))))
    x0_current = x0_next;
    x0_next = x0_current - a * double(subs(subs(gradient(f), x1, x0_current(1)), x2, x0_current(2)));
    iter = iter + 1;
end

% Вывод результатов.
disp ('Метод градиентного спуска с постоянным шагом:');
disp (['x1 = ' num2str(x0_next(1))]);
disp (['x2 = ' num2str(x0_next(2))]);
disp (['f(x1, x2) = ' num2str(double(subs(subs(f, x1, x0_next(1)), x2, x0_next(2))))]);
disp (['Заданная точность вычислений: ' num2str(e)]);
disp (['a (задает скорость градиентного спуска): ' num2str(a)]);
disp (['Количество итераций: ' num2str(iter)]);

% Вывод графика.
[x, y] = meshgrid(-5 : e : 5);
z = x ^ 2 + 2 * y ^ 2 + exp(x + y);
surf(x, y, z);
shading interp;
